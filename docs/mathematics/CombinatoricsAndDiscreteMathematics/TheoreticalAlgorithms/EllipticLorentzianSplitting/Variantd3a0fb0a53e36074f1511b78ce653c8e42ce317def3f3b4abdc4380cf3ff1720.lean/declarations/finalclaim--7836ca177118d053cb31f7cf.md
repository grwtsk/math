# finalClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05c1de8694bdbc745981be70fa4592498d59680fbe3d3a46a954b0569c01a898",
  "kind": "def",
  "lexical_name": "finalClaim",
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
  "slug": "finalclaim--7836ca177118d053cb31f7cf",
  "source": {
    "blob": "6d91ebd1cc8d9f8f53f5f9e7f2f7de6a18dd437a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variantd3a0fb0a53e36074f1511b78ce653c8e42ce317def3f3b4abdc4380cf3ff1720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7836ca177118d053cb31f7cfc92a4b08390c36c96a4873f89c6b42ec37bbe07e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variantd3a0fb0a53e36074f1511b78ce653c8e42ce317def3f3b4abdc4380cf3ff1720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05c1de8694bdbc745981be70fa4592498d59680fbe3d3a46a954b0569c01a898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalClaim (ctx : Context) : Prop :=
  (∀ M : ctx.Spacetime,
      ∀ g : ctx.LorentzMetric,
        ∀ gamma : ctx.TimelikeLine,
          ctx.IsSpacetime M g ->
            ctx.StrongEnergyCondition M g ->
              ctx.ContainsTimelikeLine M g gamma ->
                (ctx.GloballyHyperbolic M g ∨
                  ctx.TimelikeGeodesicallyComplete M g) ->
                  ∃ S : ctx.RiemannianFactor,
                    ∃ model : ctx.ProductModel,
                      ctx.IsLorentzianProductSplitting M g S model ∧
                      ctx.FactorComplete S ∧
                      ctx.FactorNonnegativeRicci S) ∧
  (∀ M : ctx.Spacetime,
      ∀ g : ctx.LorentzMetric,
        ctx.NegativeHomogeneityPDalembert M g ->
          ctx.EllipticRegularization M g)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variantd3a0fb0a53e36074f1511b78ce653c8e42ce317def3f3b4abdc4380cf3ff1720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticLorentzianSplitting/Variantd3a0fb0a53e36074f1511b78ce653c8e42ce317def3f3b4abdc4380cf3ff1720.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d91ebd1cc8d9f8f53f5f9e7f2f7de6a18dd437a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
