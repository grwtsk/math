# infty_sMulCommClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d97ac1494459deef78958675923aa7033e50ebf32451cfa19e5491830eec45b9",
  "kind": "instance",
  "lexical_name": "infty_sMulCommClass",
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
  "slug": "infty-smulcommclass--03bbfa82058543282ce500c9",
  "source": {
    "blob": "b656b252641bdb234d6ae406086ca565fde48d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 833,
    "line": 825,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03bbfa82058543282ce500c9898ea87164b16ed3c14c8c8434692b4dbbf7ab24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d97ac1494459deef78958675923aa7033e50ebf32451cfa19e5491830eec45b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 825–833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance infty_sMulCommClass {𝕜} [NormedRing 𝕜] [∀ i, Module 𝕜 (B i)] [∀ i, BoundedSMul 𝕜 (B i)]
    [∀ i, SMulCommClass 𝕜 (B i) (B i)] : SMulCommClass 𝕜 (lp B ∞) (lp B ∞) :=
  ⟨fun r f g => lp.ext <| smul_comm (N := ∀ i, B i) (α := ∀ i, B i) r (⇑f) (⇑g)⟩
#align lp.infty_smul_comm_class lp.infty_sMulCommClass

section StarRing

variable [∀ i, StarRing (B i)] [∀ i, NormedStarGroup (B i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean#L825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b656b252641bdb234d6ae406086ca565fde48d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
