# cfcₙ_imaginaryPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da40929a-e62a-6bfd-4bfe-c9200c843b68",
  "kind": "lemma",
  "lexical_name": "cfcₙ_imaginaryPart",
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
  "slug": "cfc-imaginarypart--c856376debf0a0caf6ae5752",
  "source": {
    "blob": "7913f35175baede0b1c84a09c0f2ade2179698d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variant8eacef85035e213f5498ecf5ca9bfe715cda775f8b5348675374cbf330634693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c856376debf0a0caf6ae57525771e82334db9fde3d1cb9c5ca4ff24c5151a5b4",
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

Occurrence: `result:da40929a-e62a-6bfd-4bfe-c9200c843b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_imaginaryPart (f : ℂ → ℂ) (a : A)
    (hf : ContinuousOn f (quasispectrum ℂ (ℑ a : A)) := by cfc_cont_tac)
    (hf0 : f 0 = 0 := by cfc_zero_tac) (ha : IsStarNormal a := by cfc_tac) :
    cfcₙ f (ℑ a : A) = cfcₙ (fun x ↦ f (im x)) a := by
  rw [quasispectrum_imaginaryPart a] at hf
  rw [← cfcₙ_im_id a, ← cfcₙ_comp' ..]

variable [T2Space A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealImaginaryPart/Variant8eacef85035e213f5498ecf5ca9bfe715cda775f8b5348675374cbf330634693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variant8eacef85035e213f5498ecf5ca9bfe715cda775f8b5348675374cbf330634693.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7913f35175baede0b1c84a09c0f2ade2179698d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
