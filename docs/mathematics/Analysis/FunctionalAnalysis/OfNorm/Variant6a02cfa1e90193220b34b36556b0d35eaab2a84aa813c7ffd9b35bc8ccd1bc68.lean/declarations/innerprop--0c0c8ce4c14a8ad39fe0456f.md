# innerProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f778b5e-edf0-6877-edf0-d39f715538ba",
  "kind": "theorem",
  "lexical_name": "innerProp",
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
  "slug": "innerprop--0c0c8ce4c14a8ad39fe0456f",
  "source": {
    "blob": "a974cffbf0dd8cb482fe878ec5e98a3ad3aee9b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0c8ce4c14a8ad39fe0456fe38610e00cdbc898d0f26a252290d4a9058f4b7b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f778b5e-edf0-6877-edf0-d39f715538ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerProp (r : 𝕜) : innerProp' E r := by
  intro x y
  rw [← re_add_im r, add_smul, add_left, real_prop _ x, ← smul_smul, real_prop _ _ y, I_prop,
    map_add, map_mul, conj_ofReal, conj_ofReal, conj_I]
  ring

end InnerProductSpaceable

open InnerProductSpaceable

/-- **Fréchet–von Neumann–Jordan Theorem**. A normed space `E` whose norm satisfies the
parallelogram identity can be given a compatible inner product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant6a02cfa1e90193220b34b36556b0d35eaab2a84aa813c7ffd9b35bc8ccd1bc68.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a974cffbf0dd8cb482fe878ec5e98a3ad3aee9b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
