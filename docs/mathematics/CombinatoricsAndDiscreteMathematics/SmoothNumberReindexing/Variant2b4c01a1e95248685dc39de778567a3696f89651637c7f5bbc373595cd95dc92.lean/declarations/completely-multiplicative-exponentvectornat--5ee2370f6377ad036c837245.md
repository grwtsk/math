# completely_multiplicative_exponentVectorNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fc4fe772cf350b921139575e4553f55be892a34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1a15492-cd82-03b0-456b-7396f2dc210b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17282e56-6d0a-6509-cd7b-eaffb04f56ac",
  "kind": "theorem",
  "lexical_name": "completely_multiplicative_exponentVectorNat",
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
  "slug": "completely-multiplicative-exponentvectornat--5ee2370f6377ad036c837245",
  "source": {
    "blob": "5fc4fe772cf350b921139575e4553f55be892a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee2370f6377ad036c8372450a5b922dfe1cfff1e26292eb48b7d2712536b68b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17282e56-6d0a-6509-cd7b-eaffb04f56ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completely_multiplicative_exponentVectorNat
    [CommMonoid R]
    (w : ArithFn R)
    (hw : IsCompletelyMultiplicative w)
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) :
    w (exponentVectorNat S K e) =
      ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val) := by
  classical
  unfold exponentVectorNat
  let f : {p : Nat // p ∈ S} → Nat := fun p => p.val ^ (e p).val
  change w (∏ p : {p : Nat // p ∈ S}, f p) =
    ∏ p : {p : Nat // p ∈ S}, w (f p)
  refine Finset.induction_on (Finset.univ : Finset {p : Nat // p ∈ S}) ?base ?step
  · simp [hw.1]
  · intro a s has ih
    simp [Finset.prod_insert has, hw.2, ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc4fe772cf350b921139575e4553f55be892a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
