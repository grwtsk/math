# base_smul_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9a23dde-686a-3067-cdfa-2224613bba42",
  "kind": "theorem",
  "lexical_name": "base_smul_eq_smul",
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
  "slug": "base-smul-eq-smul--5265fb3d3a55aa5802256ffc",
  "source": {
    "blob": "e959329afe5777ba1c5ee22ee787160b8e89729a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 491,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5265fb3d3a55aa5802256ffcfac728d35041878c7c1037ce891466ce4facbeb0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a23dde-686a-3067-cdfa-2224613bba42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem base_smul_eq_smul (h : H) (w : NormalWord d) :
    base φ h • w = h • w := by
  rw [base_smul_def, base_smul_def']

/-- Induction principle for `NormalWord`, that corresponds closely to inducting on
the underlying list. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e959329afe5777ba1c5ee22ee787160b8e89729a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
