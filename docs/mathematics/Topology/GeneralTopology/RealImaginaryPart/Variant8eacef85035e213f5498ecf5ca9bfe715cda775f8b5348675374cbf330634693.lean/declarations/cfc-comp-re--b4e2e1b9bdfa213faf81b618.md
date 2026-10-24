# cfc_comp_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0ea2ce4-6bcf-7ebf-b6f3-d97890ca870a",
  "kind": "lemma",
  "lexical_name": "cfc_comp_re",
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
  "slug": "cfc-comp-re--b4e2e1b9bdfa213faf81b618",
  "source": {
    "blob": "7913f35175baede0b1c84a09c0f2ade2179698d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variant8eacef85035e213f5498ecf5ca9bfe715cda775f8b5348675374cbf330634693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4e2e1b9bdfa213faf81b618e6b5d6cbecd3e9ad215ebfc8397d06ecce8f4eb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RealImaginaryPart/Variant8eacef85035e213f5498ecf5ca9bfe715cda775f8b5348675374cbf330634693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0ea2ce4-6bcf-7ebf-b6f3-d97890ca870a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_comp_re (f : ℝ → ℝ) (a : A)
    (hf : ContinuousOn f (spectrum ℝ (ℜ a : A)) := by cfc_tac)
    (ha : IsStarNormal a := by cfc_tac) :
    cfc (fun x : ℂ ↦ f (re x)) a = cfc f (ℜ a : A) := by
  have : ContinuousOn (fun x ↦ (f x.re) : ℂ → ℂ) ((re · : ℂ → ℂ) '' spectrum ℂ a) := by
    rw [spectrum_realPart' a] at hf
    refine continuous_ofReal.comp_continuousOn <| hf.comp (by fun_prop) ?_
    simpa [Set.mapsTo_image_iff, Function.comp_def] using Set.mapsTo_image ..
  conv_rhs =>
    rw [cfc_real_eq_complex, ← cfc_re_id a, ← cfc_comp' ..]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealImaginaryPart/Variant8eacef85035e213f5498ecf5ca9bfe715cda775f8b5348675374cbf330634693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variant8eacef85035e213f5498ecf5ca9bfe715cda775f8b5348675374cbf330634693.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7913f35175baede0b1c84a09c0f2ade2179698d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
