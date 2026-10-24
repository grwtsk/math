# compactnessMathlibProofCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8190313f955e2a83855cf6f5a6176970592cac8fca344b489227138218acb96",
  "kind": "def",
  "lexical_name": "compactnessMathlibProofCertificate",
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
  "slug": "compactnessmathlibproofcertificate--9d62919556750ab13d0c7d85",
  "source": {
    "blob": "26bf04bf6eb7750ece495aed8ff91736deb6c6d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d62919556750ab13d0c7d85508369b1d8192d0887460088afdf9e6a5dd73125",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8190313f955e2a83855cf6f5a6176970592cac8fca344b489227138218acb96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactnessMathlibProofCertificate
    (a b : ℝ) (hab : a ≤ b) :
    MathlibProofCertificate
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness")
      (compactnessClaim a b hab) where
  theoremName := "compactness of Icc and extreme value theorem"
  moduleName := "AnalyticNumber.Mathlib.Compactness"
  proof := by
    refine ⟨real_Icc_isCompact a b, ?_⟩
    intro f hf
    exact
      ⟨continuousOn_Icc_attains_max hab hf,
        continuousOn_Icc_attains_min hab hf⟩

/-- The compactness and extreme-value theorem, transported through the
boundary calculus rather than returned directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26bf04bf6eb7750ece495aed8ff91736deb6c6d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
