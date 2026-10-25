# proveNatSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50b28f0b57a249951c12477a005b742b4006227019c371e995a70021bc0fd053",
  "kind": "def",
  "lexical_name": "proveNatSqrt",
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
  "slug": "provenatsqrt--bf8e05b6c583e76e17a31777",
  "source": {
    "blob": "c81049b24a8adfa82e65fc911d672b65af95f86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf8e05b6c583e76e17a31777f514d871a7c2655f358ed79797944ab71fc7ed26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50b28f0b57a249951c12477a005b742b4006227019c371e995a70021bc0fd053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveNatSqrt (ex : Q(ℕ)) : (ey : Q(ℕ)) × Q(Nat.sqrt $ex = $ey) :=
  match ex.natLit! with
  | 0 => have : $ex =Q nat_lit 0 := ⟨⟩; ⟨q(nat_lit 0), q(Nat.sqrt_zero)⟩
  | 1 => have : $ex =Q nat_lit 1 := ⟨⟩; ⟨q(nat_lit 1), q(Nat.sqrt_one)⟩
  | x =>
    let y := Nat.sqrt x
    have ey : Q(ℕ) := mkRawNatLit y
    have er : Q(ℕ) := mkRawNatLit (x - y * y)
    have hr : Q($ey * $ey + $er = $ex) := (q(Eq.refl $ex) : Expr)
    have hle : Q(Nat.ble $er (2 * $ey)) := (q(Eq.refl true) : Expr)
    ⟨ey, q(nat_sqrt_helper $hr $hle)⟩

/-- Evaluates the `Nat.sqrt` function. -/
@[norm_num Nat.sqrt _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant5f51b75aa773f23b54796bceae0f6536ede5ac4da74dd5a64d5949a4591a9f4a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c81049b24a8adfa82e65fc911d672b65af95f86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
