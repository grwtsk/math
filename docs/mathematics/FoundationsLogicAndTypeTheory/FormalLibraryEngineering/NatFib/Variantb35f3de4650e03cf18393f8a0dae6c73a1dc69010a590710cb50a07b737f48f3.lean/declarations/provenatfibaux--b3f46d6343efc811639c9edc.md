# proveNatFibAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54ca4b785e4e1717d224925b19d6ad4491700529b1d977a652bfef7f94786a59",
  "kind": "def",
  "lexical_name": "proveNatFibAux",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "provenatfibaux--b3f46d6343efc811639c9edc",
  "source": {
    "blob": "4ac286c3557e7a7ad593daf804c9e3aaf72a9e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3f46d6343efc811639c9edca1b0acab607d1209748715965c46afa85e18d2d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54ca4b785e4e1717d224925b19d6ad4491700529b1d977a652bfef7f94786a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def proveNatFibAux (en' : Q(ℕ)) : (ea' eb' : Q(ℕ)) × Q(IsFibAux $en' $ea' $eb') :=
  match en'.natLit! with
  | 0 =>
    show (ea' eb' : Q(ℕ)) × Q(IsFibAux 0 $ea' $eb') from
    ⟨mkRawNatLit 0, mkRawNatLit 1, q(isFibAux_zero)⟩
  | 1 =>
    show (ea' eb' : Q(ℕ)) × Q(IsFibAux 1 $ea' $eb') from
    ⟨mkRawNatLit 1, mkRawNatLit 1, q(isFibAux_one)⟩
  | n' =>
    have en : Q(ℕ) := mkRawNatLit <| n' / 2
    let ⟨ea, eb, H⟩ := proveNatFibAux en
    let a := ea.natLit!
    let b := eb.natLit!
    if n' % 2 == 0 then
      have hn : Q(2 * $en = $en') := (q(Eq.refl $en') : Expr)
      have ea' : Q(ℕ) := mkRawNatLit <| a * (2 * b - a)
      have eb' : Q(ℕ) := mkRawNatLit <| a * a + b * b
      have h1 : Q($ea * (2 * $eb - $ea) = $ea') := (q(Eq.refl $ea') : Expr)
      have h2 : Q($ea * $ea + $eb * $eb = $eb') := (q(Eq.refl $eb') : Expr)
      ⟨ea', eb', q(isFibAux_two_mul $H $hn $h1 $h2)⟩
    else
      have hn : Q(2 * $en + 1 = $en') := (q(Eq.refl $en') : Expr)
      have ea' : Q(ℕ) := mkRawNatLit <| a * a + b * b
      have eb' : Q(ℕ) := mkRawNatLit <| b * (2 * a + b)
      have h1 : Q($ea * $ea + $eb * $eb = $ea') := (q(Eq.refl $ea') : Expr)
      have h2 : Q($eb * (2 * $ea + $eb) = $eb') := (q(Eq.refl $eb') : Expr)
      ⟨ea', eb', q(isFibAux_two_mul_add_one $H $hn $h1 $h2)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac286c3557e7a7ad593daf804c9e3aaf72a9e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
