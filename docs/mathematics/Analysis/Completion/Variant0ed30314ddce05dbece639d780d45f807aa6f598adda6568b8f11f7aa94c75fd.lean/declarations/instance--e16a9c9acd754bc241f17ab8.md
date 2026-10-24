# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79784255abab8ad9cc5f19f7cbb85d5b77e08f23c40480bce7aa9ba0e2a0f979",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e16a9c9acd754bc241f17ab8",
  "source": {
    "blob": "b9f77a15cf94cba107044672086010ce61b7e7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e16a9c9acd754bc241f17ab85385014f35d02e6d4640a33f77e5bd12213b5d97",
  "verification": {
    "reference": "docs/verification/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79784255abab8ad9cc5f19f7cbb85d5b77e08f23c40480bce7aa9ba0e2a0f979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : NormedSpace 𝕜 (Completion E) :=
  { Completion.instModule with
    smul := (· • ·)
    norm_smul_le := fun c x =>
      induction_on x
        (isClosed_le (continuous_const_smul _).norm (continuous_const.mul continuous_norm)) fun y =>
        by simp only [← coe_smul, norm_coe, norm_smul, le_rfl] }

variable {𝕜 E}

/-- Embedding of a normed space to its completion as a linear isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Completion/Variant0ed30314ddce05dbece639d780d45f807aa6f598adda6568b8f11f7aa94c75fd.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f77a15cf94cba107044672086010ce61b7e7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
