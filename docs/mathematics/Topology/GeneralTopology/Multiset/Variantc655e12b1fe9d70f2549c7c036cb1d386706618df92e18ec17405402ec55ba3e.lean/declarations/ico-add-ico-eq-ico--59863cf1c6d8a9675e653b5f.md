# Ico_add_Ico_eq_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:098d686d-938b-01ea-99ac-86b6c23768d9",
  "kind": "theorem",
  "lexical_name": "Ico_add_Ico_eq_Ico",
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
  "slug": "ico-add-ico-eq-ico--59863cf1c6d8a9675e653b5f",
  "source": {
    "blob": "e07ed1034137dde2375be2ce46cb41aab3b473b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 290,
    "path": "GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59863cf1c6d8a9675e653b5fc6a88be0329c9c065fac4930f4a89e7c728ab42a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098d686d-938b-01ea-99ac-86b6c23768d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_add_Ico_eq_Ico {a b c : α} (hab : a ≤ b) (hbc : b ≤ c) :
    Ico a b + Ico b c = Ico a c := by
  rw [add_eq_union_iff_disjoint.2 (Ico_disjoint_Ico le_rfl), Ico, Ico, Ico, ← Finset.union_val,
    Finset.Ico_union_Ico_eq_Ico hab hbc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07ed1034137dde2375be2ce46cb41aab3b473b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
