# oreDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f6283a6cd794579fa6075819c9f9d69b4d2468629c635a0d48336457756fe81",
  "kind": "def",
  "lexical_name": "oreDiv",
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
  "slug": "orediv--fc3a02787ae329dadac58ea3",
  "source": {
    "blob": "cf44a79828b938c6400893f676e0b3c79e306139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3a02787ae329dadac58ea38211c43711b0510e7541bb92f46ebf4e7fd48bdf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f6283a6cd794579fa6075819c9f9d69b4d2468629c635a0d48336457756fe81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oreDiv (r : X) (s : S) : X[S⁻¹] :=
  Quotient.mk' (r, s)

@[inherit_doc]
infixl:70 " /ₒ " => oreDiv

@[inherit_doc]
infixl:65 " -ₒ " => _root_.AddOreLocalization.oreSub

@[to_additive (attr := elab_as_elim, cases_eliminator, induction_eliminator)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf44a79828b938c6400893f676e0b3c79e306139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
