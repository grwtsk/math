# closedEmbeddingCFC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1519735-56a3-0832-482d-cc5393f8645d",
  "kind": "theorem",
  "lexical_name": "closedEmbeddingCFC",
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
  "slug": "closedembeddingcfc--df858ebbbf2afb031a3f833d",
  "source": {
    "blob": "9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df858ebbbf2afb031a3f833de980001fda7590eb893ec6cfe3f1fd8b354d1e18",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1519735-56a3-0832-482d-cc5393f8645d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem closedEmbeddingCFC (f : C(S, R)) (halg : IsUniformEmbedding (algebraMap R S))
    (h0 : p 0) (h : ∀ a, p a ↔ q a ∧ SpectrumRestricts a f) :
    ClosedEmbeddingContinuousFunctionalCalculus R A p where
  toContinuousFunctionalCalculus := SpectrumRestricts.cfc f halg.isClosedEmbedding h0 h
  isClosedEmbedding a ha := by
    have := SpectrumRestricts.cfc f halg.isClosedEmbedding h0 h
    rw [cfcHom_eq_restrict f ha ((h a).mp ha).1 ((h a).mp ha).2]
    exact isClosedEmbedding_starAlgHom (cfcHom_isClosedEmbedding ((h a).mp ha).1)
      ((h a).mp ha).2 halg

end SpectrumRestricts


namespace QuasispectrumRestricts

local notation "σₙ" => quasispectrum
open ContinuousMapZero Set

/-- The homeomorphism `quasispectrum S a ≃ₜ quasispectrum R a` induced by
`QuasispectrumRestricts a f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
