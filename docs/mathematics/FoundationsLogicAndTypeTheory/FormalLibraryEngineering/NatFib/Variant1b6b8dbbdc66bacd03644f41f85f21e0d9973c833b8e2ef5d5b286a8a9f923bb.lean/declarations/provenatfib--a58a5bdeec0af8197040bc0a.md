# proveNatFib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcbcbac56e4a99b5cc89c32693e73f4c08603ca073a1bcd0f876d3b7f9d9f24f",
  "kind": "def",
  "lexical_name": "proveNatFib",
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
  "slug": "provenatfib--a58a5bdeec0af8197040bc0a",
  "source": {
    "blob": "55e79c6cd445fad5785e08772955cca42f808179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a58a5bdeec0af8197040bc0af3bf109c025eabdcecca0a7b803bbb66a4776b88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcbcbac56e4a99b5cc89c32693e73f4c08603ca073a1bcd0f876d3b7f9d9f24f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveNatFib (en' : Q(ℕ)) : (em : Q(ℕ)) × Q(Nat.fib $en' = $em) :=
  match en'.natLit! with
  | 0 => show (em : Q(ℕ)) × Q(Nat.fib 0 = $em) from ⟨mkRawNatLit 0, q(Nat.fib_zero)⟩
  | 1 => show (em : Q(ℕ)) × Q(Nat.fib 1 = $em) from ⟨mkRawNatLit 1, q(Nat.fib_one)⟩
  | 2 => show (em : Q(ℕ)) × Q(Nat.fib 2 = $em) from ⟨mkRawNatLit 1, q(Nat.fib_two)⟩
  | n' =>
    have en : Q(ℕ) := mkRawNatLit <| n' / 2
    let ⟨ea, eb, H⟩ := proveNatFibAux en
    let a := ea.natLit!
    let b := eb.natLit!
    if n' % 2 == 0 then
      have hn : Q(2 * $en = $en') := (q(Eq.refl $en') : Expr)
      have ea' : Q(ℕ) := mkRawNatLit <| a * (2 * b - a)
      have h1 : Q($ea * (2 * $eb - $ea) = $ea') := (q(Eq.refl $ea') : Expr)
      ⟨ea', q(isFibAux_two_mul_done $H $hn $h1)⟩
    else
      have hn : Q(2 * $en + 1 = $en') := (q(Eq.refl $en') : Expr)
      have ea' : Q(ℕ) := mkRawNatLit <| a * a + b * b
      have h1 : Q($ea * $ea + $eb * $eb = $ea') := (q(Eq.refl $ea') : Expr)
      ⟨ea', q(isFibAux_two_mul_add_one_done $H $hn $h1)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e79c6cd445fad5785e08772955cca42f808179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
