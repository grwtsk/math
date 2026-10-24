# induct_roc_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eef46607-5511-ad47-1e9f-f116dda165de",
  "kind": "theorem",
  "lexical_name": "induct_roc_right",
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
  "slug": "induct-roc-right--b54cfeb560ecc0a022a3da37",
  "source": {
    "blob": "699e828f90c8e94e33a7b65eb617f643afc5b247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1829,
    "line": 1824,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b54cfeb560ecc0a022a3da37150eb3b3f6e70b34ae646d60f816366d1a95faed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef46607-5511-ad47-1e9f-f116dda165de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1824–1829.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induct_roc_right (motive : Nat → Nat → Prop)
    (base : ∀ a b, b ≤ a → motive a b)
    (step : ∀ a b, a ≤ b → motive a b → motive a (b + 1))
    (a b : Nat) : motive a b :=
  induct_rco_right motive base step a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean#L1824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699e828f90c8e94e33a7b65eb617f643afc5b247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
