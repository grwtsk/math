# DifferentiableOn.finCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3338d2fa07c6fbeb74aa440d6363a4fc5f3968a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 682,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3fc2c354fe592890553c7b29f886ed958d43009defee3e690c34bed96ff8a27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:452740d6-39a6-6dbe-2d4a-9c9a8de82629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7e0576d-7847-8f1c-8594-29f51e4ec083",
  "kind": "theorem",
  "lexical_name": "DifferentiableOn.finCons",
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
  "slug": "differentiableon-fincons--47a85e2fdc223c2f148b239d",
  "source": {
    "blob": "3338d2fa07c6fbeb74aa440d6363a4fc5f3968a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 682,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Varianta3fc2c354fe592890553c7b29f886ed958d43009defee3e690c34bed96ff8a27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47a85e2fdc223c2f148b239d0d716ebd6a0f1f0882343f75ffbf1d9136656878",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Prod/Varianta3fc2c354fe592890553c7b29f886ed958d43009defee3e690c34bed96ff8a27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7e0576d-7847-8f1c-8594-29f51e4ec083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DifferentiableOn.finCons
    (h : DifferentiableOn 𝕜 φ s) (hs : DifferentiableOn 𝕜 φs s) :
    DifferentiableOn 𝕜 (fun x => Fin.cons (φ x) (φs x)) s :=
  differentiableOn_finCons'.mpr ⟨h, hs⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Prod/Varianta3fc2c354fe592890553c7b29f886ed958d43009defee3e690c34bed96ff8a27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Varianta3fc2c354fe592890553c7b29f886ed958d43009defee3e690c34bed96ff8a27.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3338d2fa07c6fbeb74aa440d6363a4fc5f3968a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
