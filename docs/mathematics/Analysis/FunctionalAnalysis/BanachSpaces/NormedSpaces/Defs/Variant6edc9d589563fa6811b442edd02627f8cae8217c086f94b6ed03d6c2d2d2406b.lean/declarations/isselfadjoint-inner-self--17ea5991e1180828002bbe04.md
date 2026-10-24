# isSelfAdjoint_inner_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eec49103cdec8913800bacb5811fca133111b0d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df65e7ca-7dda-d837-d020-d767386cf7cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4407c936-e3da-d1e7-d4fb-b3b5c0cccf57",
  "kind": "lemma",
  "lexical_name": "isSelfAdjoint_inner_self",
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
  "slug": "isselfadjoint-inner-self--17ea5991e1180828002bbe04",
  "source": {
    "blob": "eec49103cdec8913800bacb5811fca133111b0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 148,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17ea5991e1180828002bbe0459652fbf24a780fc898e283e0b6cfe18149a59a0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4407c936-e3da-d1e7-d4fb-b3b5c0cccf57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSelfAdjoint_inner_self {x : E} : IsSelfAdjoint ⟪x, x⟫ := star_inner _ _

end general

section norm

variable {A E : Type*} [NonUnitalCStarAlgebra A] [PartialOrder A] [AddCommGroup E]
  [Module ℂ E] [SMul A E] [Norm E] [CStarModule A E]

local notation "⟪" x ", " y "⟫" => inner A x y

open scoped InnerProductSpace in
/-- The norm associated with a Hilbert C⋆-module. It is not registered as a norm, since a type
might already have a norm defined on it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant6edc9d589563fa6811b442edd02627f8cae8217c086f94b6ed03d6c2d2d2406b.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eec49103cdec8913800bacb5811fca133111b0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
