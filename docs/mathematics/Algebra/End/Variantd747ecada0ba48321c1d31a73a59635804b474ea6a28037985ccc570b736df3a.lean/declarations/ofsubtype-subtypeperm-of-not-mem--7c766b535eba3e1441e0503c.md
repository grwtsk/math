# ofSubtype_subtypePerm_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc5a4c9d-5bbb-0946-ac00-70a01dae9f10",
  "kind": "theorem",
  "lexical_name": "ofSubtype_subtypePerm_of_not_mem",
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
  "slug": "ofsubtype-subtypeperm-of-not-mem--7c766b535eba3e1441e0503c",
  "source": {
    "blob": "9b08501934b229ffb231f623ec4a36304c2df230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 498,
    "path": "GRWTSK/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c766b535eba3e1441e0503ce109e3c7217422a4dfbc28b378fd7e37f5a2a51f",
  "verification": {
    "reference": "docs/verification/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc5a4c9d-5bbb-0946-ac00-70a01dae9f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofSubtype_subtypePerm_of_not_mem {p : α → Prop} [DecidablePred p]
    {g : Perm α} (hg : ∀ (x : α), p (g x) ↔ p x)
    {a : α} (ha : ¬ p a) : (ofSubtype (g.subtypePerm hg)) a = a :=
  ofSubtype_apply_of_not_mem (g.subtypePerm hg) ha

/-- Permutations on a subtype are equivalent to permutations on the original type that fix pointwise
the rest. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b08501934b229ffb231f623ec4a36304c2df230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
