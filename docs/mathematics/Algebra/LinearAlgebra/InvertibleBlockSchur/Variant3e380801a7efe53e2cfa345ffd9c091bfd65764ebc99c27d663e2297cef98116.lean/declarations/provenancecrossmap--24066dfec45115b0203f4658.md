# provenanceCrossMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:342ec782c8dcf4c79dcfe0b019942f4690112894855a505eb1a6e4154c0c5fca",
  "kind": "def",
  "lexical_name": "provenanceCrossMap",
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
  "slug": "provenancecrossmap--24066dfec45115b0203f4658",
  "source": {
    "blob": "975d43f98daacfcf2472ed6c7a02a724798b5d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 28,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24066dfec45115b0203f46581fd6e8b3b2d184d2b0e4d469beee186ef75e40aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:342ec782c8dcf4c79dcfe0b019942f4690112894855a505eb1a6e4154c0c5fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def provenanceCrossMap (G : PositiveForm (P × U)) :
    U →ₗ[ℝ] (P →ₗ[ℝ] ℝ) where
  toFun u :=
    { toFun := fun p =>
        G.form (provenanceInclusion p) (autonomousInclusion u)
      map_add' := by
        intro p q
        rw [map_add, G.add_left]
      map_smul' := by
        intro r p
        rw [map_smul, G.smul_left] }
  map_add' := by
    intro u v
    ext p
    rw [map_add, G.add_right]
  map_smul' := by
    intro r u
    ext p
    rw [map_smul, G.smul_right]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975d43f98daacfcf2472ed6c7a02a724798b5d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
