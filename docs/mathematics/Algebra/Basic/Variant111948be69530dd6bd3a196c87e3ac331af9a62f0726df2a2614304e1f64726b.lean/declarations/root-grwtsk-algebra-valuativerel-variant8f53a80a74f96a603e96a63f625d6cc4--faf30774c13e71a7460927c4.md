# _root_.GRWTSK.Algebra.ValuativeRel.Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.ValuativeRel.IsRankLeOne.of_valuativeExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e1e429c-69eb-a4fb-51c2-5c2a48755706",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.ValuativeRel.Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.ValuativeRel.IsRankLeOne.of_valuativeExtension",
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
  "slug": "root-grwtsk-algebra-valuativerel-variant8f53a80a74f96a603e96a63f625d6cc4--faf30774c13e71a7460927c4",
  "source": {
    "blob": "63286af4d73cda50f05afa350b3364de2aa7f3c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1319,
    "line": 1305,
    "path": "GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faf30774c13e71a7460927c48e4354514d4196e45b9f37b75a39960a91fc1c99",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e1e429c-69eb-a4fb-51c2-5c2a48755706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1305–1319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.ValuativeRel.Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.ValuativeRel.IsRankLeOne.of_valuativeExtension [IsRankLeOne B] : IsRankLeOne A := by
  obtain ⟨⟨f, hf⟩⟩ := IsRankLeOne.nonempty (R := B)
  exact ⟨⟨f.comp (mapValueGroupWithZero _ _), hf.comp mapValueGroupWithZero_strictMono⟩⟩

end Ring

end ValuativeExtension

namespace ValuativeRel

variable {R : Type*} [Semiring R] [ValuativeRel R]

/-- Any rank-at-most-one valuation has a mul-archimedean value group.
The converse (for any compatible valuation) is `ValuativeRel.isRankLeOne_iff_mulArchimedean`
which is in a later file since it requires a larger theory of reals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant111948be69530dd6bd3a196c87e3ac331af9a62f0726df2a2614304e1f64726b.lean#L1305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63286af4d73cda50f05afa350b3364de2aa7f3c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
