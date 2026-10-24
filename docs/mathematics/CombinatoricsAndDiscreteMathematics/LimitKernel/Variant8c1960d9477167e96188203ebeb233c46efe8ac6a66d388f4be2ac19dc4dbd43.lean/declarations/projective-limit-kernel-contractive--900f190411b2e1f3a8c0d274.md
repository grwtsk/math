# projective_limit_kernel_contractive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:092007d9-1b71-bb7a-8955-007cbe8b33ec",
  "kind": "theorem",
  "lexical_name": "projective_limit_kernel_contractive",
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
  "slug": "projective-limit-kernel-contractive--900f190411b2e1f3a8c0d274",
  "source": {
    "blob": "6b9d9361008f287890f392526a4a14636f737e01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:900f190411b2e1f3a8c0d274d375a670e9beb001f64b53a8078d3d9b631a9615",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:092007d9-1b71-bb7a-8955-007cbe8b33ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projective_limit_kernel_contractive
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system)
    (schedule : CompatibleSchedule system)
    (left right : kernel.Law) :
    kernel.wasserstein
        (kernel.push schedule left)
        (kernel.push schedule right) ≤
      system.uniformContraction *
        kernel.wasserstein left right :=
  kernel.uniformlyContractive
    schedule left right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b9d9361008f287890f392526a4a14636f737e01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
