# ιFun_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:605bf8e7-e247-efd5-bf84-e87d957d4a1d",
  "kind": "lemma",
  "lexical_name": "ιFun_injective",
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
  "slug": "fun-injective--ac9622e7f7414ee6ac0e7fc0",
  "source": {
    "blob": "aca8cb692be544dbf607c65349f7f2a6453cfd88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9622e7f7414ee6ac0e7fc0baa70f937e9ea2be2d0365735672ba851e72a077",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:605bf8e7-e247-efd5-bf84-e87d957d4a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιFun_injective : (ιFun π).Injective := by
  rintro ⟨⟨a, x⟩⟩ ⟨⟨b, y⟩⟩ (h : π _ _ = π _ _)
  apply Quotient.sound'
  refine ⟨pullback (π a) (π b), ⟨⟨x, y⟩, h⟩, pullback.fst _ _, pullback.snd _ _, ?_, rfl, rfl⟩
  ext ⟨_, h⟩
  exact h

/-- Implementation: The quotient of `relation π`, considered as an object of `CompHaus`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aca8cb692be544dbf607c65349f7f2a6453cfd88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
