# getKey_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b81fd3e-9e64-dc5a-c9e6-f28121dfcb36",
  "kind": "theorem",
  "lexical_name": "getKey_congr",
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
  "slug": "getkey-congr--509cfc03a8bbdd1ed6cef048",
  "source": {
    "blob": "738c5c7f5f4d9c85fa89d1173682192b4b505414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 742,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:509cfc03a8bbdd1ed6cef0486349699856988d584c8ae3f2d523817217228360",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b81fd3e-9e64-dc5a-c9e6-f28121dfcb36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKey_congr [TransCmp cmp] {k₁ k₂ : α} (h' : cmp k₁ k₂ = .eq)
    (h₁ : k₁ ∈ t) : t.getKey k₁ h₁ = t.getKey k₂ ((mem_congr h').mp h₁) :=
  t.inductionOn (fun _ h' h₁ => DTreeMap.getKey_congr h' h₁) h' h₁

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant1baf7c740866fedce571448378b206c351fde8e81b702bc969bcbf176541baec.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738c5c7f5f4d9c85fa89d1173682192b4b505414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
