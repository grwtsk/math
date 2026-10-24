# eq_inter_halfSpace'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a684d3740e3390f231c419c425cd96338b619d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a78ceabd87a39d48b163e5d4f07216a1ed1e15ba1d425cb17efe6bd67e69f1cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10233a49-fba9-cefa-97a4-8e24da895c5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be507564-c340-ae0e-225a-9bd9fadff867",
  "kind": "theorem",
  "lexical_name": "eq_inter_halfSpace'",
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
  "slug": "eq-inter-halfspace--8f1c7fbf46eb58bc2e4ce3bc",
  "source": {
    "blob": "a684d3740e3390f231c419c425cd96338b619d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Varianta78ceabd87a39d48b163e5d4f07216a1ed1e15ba1d425cb17efe6bd67e69f1cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1c7fbf46eb58bc2e4ce3bce73ed02edda7205ff8eb2ce64d30c74f596bef37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Varianta78ceabd87a39d48b163e5d4f07216a1ed1e15ba1d425cb17efe6bd67e69f1cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be507564-c340-ae0e-225a-9bd9fadff867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_inter_halfSpace' {A B : Set E} (hAB : IsExposed 𝕜 A B) (hB : B.Nonempty) :
    ∃ l : StrongDual 𝕜 E, ∃ a, B = { x ∈ A | a ≤ l x } := by
  obtain ⟨l, rfl⟩ := hAB hB
  obtain ⟨w, hw⟩ := hB
  exact ⟨l, l w, Subset.antisymm (fun x hx => ⟨hx.1, hx.2 w hw.1⟩) fun x hx =>
    ⟨hx.1, fun y hy => (hw.2 y hy).trans hx.2⟩⟩

/-- For nontrivial `𝕜`, if `B` is an exposed subset of `A`, then `B` is the intersection of `A` with
some closed half-space. The converse is *not* true. It would require that the corresponding open
half-space doesn't intersect `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Varianta78ceabd87a39d48b163e5d4f07216a1ed1e15ba1d425cb17efe6bd67e69f1cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Varianta78ceabd87a39d48b163e5d4f07216a1ed1e15ba1d425cb17efe6bd67e69f1cb.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a684d3740e3390f231c419c425cd96338b619d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
