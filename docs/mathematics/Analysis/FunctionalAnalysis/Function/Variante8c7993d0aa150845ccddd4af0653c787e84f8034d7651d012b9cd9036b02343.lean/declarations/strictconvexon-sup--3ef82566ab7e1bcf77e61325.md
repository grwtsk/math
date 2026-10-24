# StrictConvexOn.sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b181d3772efe8a0c021864091ef549c370d105e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 612,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8c7993d0aa150845ccddd4af0653c787e84f8034d7651d012b9cd9036b02343.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b5e6dd2-050a-a5f6-4a88-3d86952683e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42647749-d584-2048-cca9-387c605d2624",
  "kind": "theorem",
  "lexical_name": "StrictConvexOn.sup",
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
  "slug": "strictconvexon-sup--3ef82566ab7e1bcf77e61325",
  "source": {
    "blob": "b181d3772efe8a0c021864091ef549c370d105e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 612,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variante8c7993d0aa150845ccddd4af0653c787e84f8034d7651d012b9cd9036b02343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef82566ab7e1bcf77e61325b548423a9b09de3dc24461d9d3aa54a3919f78b5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variante8c7993d0aa150845ccddd4af0653c787e84f8034d7651d012b9cd9036b02343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42647749-d584-2048-cca9-387c605d2624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvexOn.sup (hf : StrictConvexOn 𝕜 s f) (hg : StrictConvexOn 𝕜 s g) :
    StrictConvexOn 𝕜 s (f ⊔ g) :=
  ⟨hf.left, fun x hx y hy hxy a b ha hb hab =>
    max_lt
      (calc
        f (a • x + b • y) < a • f x + b • f y := hf.2 hx hy hxy ha hb hab
        _ ≤ a • (f x ⊔ g x) + b • (f y ⊔ g y) := by gcongr <;> apply le_sup_left)
      (calc
        g (a • x + b • y) < a • g x + b • g y := hg.2 hx hy hxy ha hb hab
        _ ≤ a • (f x ⊔ g x) + b • (f y ⊔ g y) := by gcongr <;> apply le_sup_right)⟩
#align strict_convex_on.sup StrictConvexOn.sup

/-- The pointwise minimum of strictly concave functions is strictly concave. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variante8c7993d0aa150845ccddd4af0653c787e84f8034d7651d012b9cd9036b02343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variante8c7993d0aa150845ccddd4af0653c787e84f8034d7651d012b9cd9036b02343.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b181d3772efe8a0c021864091ef549c370d105e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
