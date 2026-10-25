# proveAscFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c22efc5289f5aab207895690201e2655e026c2b890e3fb37706a4a152791f251",
  "kind": "def",
  "lexical_name": "proveAscFactorial",
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
  "slug": "proveascfactorial--d47809f9878c18d14e9d8d62",
  "source": {
    "blob": "32ac6d2885355b91442b84ac00b97006246f685f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d47809f9878c18d14e9d8d62d92457b3ebea0d049ea972d5032ab446c9643e2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c22efc5289f5aab207895690201e2655e026c2b890e3fb37706a4a152791f251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def proveAscFactorial (n l : ℕ) (en el : Q(ℕ)) :
    ℕ × (eresult : Q(ℕ)) × Q(($en).ascFactorial $el = $eresult) :=
  if l ≤ 50 then
    have res : ℕ := n.ascFactorial l
    have eres : Q(ℕ) := mkRawNatLit (n.ascFactorial l)
    have : ($en).ascFactorial $el =Q $eres := ⟨⟩
    ⟨res, eres, q(Eq.refl $eres)⟩
  else
    have m : ℕ := l / 2
    have em : Q(ℕ) := mkRawNatLit m
    have : $em =Q $el / 2 := ⟨⟩

    have r : ℕ := l - m
    have er : Q(ℕ) := mkRawNatLit r
    have : $er =Q $el - $em := ⟨⟩
    have : $el =Q ($em + $er) := ⟨⟩

    have nm : ℕ := n + m
    have enm : Q(ℕ) := mkRawNatLit nm
    have : $enm =Q $en + $em := ⟨⟩

    let ⟨a, ea, a_prf⟩ := proveAscFactorial n m en em
    let ⟨b, eb, b_prf⟩ := proveAscFactorial (n + m) r enm er
    have eab : Q(ℕ) := mkRawNatLit (a * b)
    have : $eab =Q $ea * $eb := ⟨⟩
    ⟨a * b, eab, q(by convert asc_factorial_aux $en $em $er $ea $eb $a_prf $b_prf)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32ac6d2885355b91442b84ac00b97006246f685f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
