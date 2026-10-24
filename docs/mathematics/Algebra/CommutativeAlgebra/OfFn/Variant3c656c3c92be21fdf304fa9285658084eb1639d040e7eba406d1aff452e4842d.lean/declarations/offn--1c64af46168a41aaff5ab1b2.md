# ofFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3298c6ad08cdc0b69fcda937ecfe4aadaf4034afcccecc10e440a84634c0baf",
  "kind": "def",
  "lexical_name": "ofFn",
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
  "slug": "offn--1c64af46168a41aaff5ab1b2",
  "source": {
    "blob": "b0ccd43c2c7413b283d5004bc5f09211749102a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c64af46168a41aaff5ab1b2b1c2c325d96784091d25d19f93041eb5aa10e53d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3298c6ad08cdc0b69fcda937ecfe4aadaf4034afcccecc10e440a84634c0baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFn (n : ℕ) : (Fin n → R) →ₗ[R] R[X] where
  toFun v := ⟨.ofCoeff (List.ofFn v).toFinsupp⟩
  map_add' x y := by
    ext i
    by_cases h : i < n
    · simp [h]
    · simp [h]
  map_smul' x p := by
    ext i
    by_cases h : i < n
    · simp [h]
    · simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ccd43c2c7413b283d5004bc5f09211749102a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
