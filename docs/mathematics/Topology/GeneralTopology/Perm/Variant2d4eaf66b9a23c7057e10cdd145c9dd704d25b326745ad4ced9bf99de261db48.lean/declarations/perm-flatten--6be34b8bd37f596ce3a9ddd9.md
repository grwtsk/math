# Perm.flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51dae722-2f97-c027-5a94-101d25c1e3a8",
  "kind": "theorem",
  "lexical_name": "Perm.flatten",
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
  "slug": "perm-flatten--6be34b8bd37f596ce3a9ddd9",
  "source": {
    "blob": "9186c3a1ce7df7689a61f9a932ec5e5eb2b652e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 574,
    "path": "GRWTSK/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be34b8bd37f596ce3a9ddd9f4aa99d0032e6a6cfb626faa2c587daffb5483f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51dae722-2f97-c027-5a94-101d25c1e3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Perm.flatten {l₁ l₂ : List (List α)} (h : l₁ ~ l₂) : l₁.flatten ~ l₂.flatten := by
  induction h with
  | nil => rfl
  | cons _ _ ih => simp only [flatten_cons, perm_append_left_iff, ih]
  | swap => simp only [flatten_cons, ← append_assoc, perm_append_right_iff]; exact perm_append_comm ..
  | trans _ _ ih₁ ih₂ => exact trans ih₁ ih₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9186c3a1ce7df7689a61f9a932ec5e5eb2b652e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
