# CanonicallyOrderedCommSemiring.multiset_prod_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdd3bfbd-6596-930c-781d-1b4a605be952",
  "kind": "lemma",
  "lexical_name": "CanonicallyOrderedCommSemiring.multiset_prod_pos",
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
  "slug": "canonicallyorderedcommsemiring-multiset-prod-pos--1a32ae7879e65bb5f446b07b",
  "source": {
    "blob": "fe4ee7c643610a160d3447283e414f93a1677aed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a32ae7879e65bb5f446b07b4df1ac9af17eeeb096ff060efdb3f7a7cde2668a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdd3bfbd-6596-930c-781d-1b4a605be952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CanonicallyOrderedCommSemiring.multiset_prod_pos {R} [CanonicallyOrderedCommSemiring R]
    [Nontrivial R] {m : Multiset R} : 0 < m.prod ↔ (∀ x ∈ m, (0 : R) < x) := by
  rcases m with ⟨l⟩
  rw [Multiset.quot_mk_to_coe'', Multiset.coe_prod]
  exact CanonicallyOrderedCommSemiring.list_prod_pos

open Multiset

namespace Commute

variable [NonUnitalNonAssocSemiring α] (s : Multiset α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant52fa287473806483b10d778d95a30d760bb8b09727f7868d09e7eccaa8036bcd.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe4ee7c643610a160d3447283e414f93a1677aed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
