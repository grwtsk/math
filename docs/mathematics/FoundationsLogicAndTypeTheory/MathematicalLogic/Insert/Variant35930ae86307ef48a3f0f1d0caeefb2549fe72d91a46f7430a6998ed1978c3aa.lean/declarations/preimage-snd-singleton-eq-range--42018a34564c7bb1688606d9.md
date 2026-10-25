# preimage_snd_singleton_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08cced71-10a8-3418-5d40-9b81a870e465",
  "kind": "lemma",
  "lexical_name": "preimage_snd_singleton_eq_range",
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
  "slug": "preimage-snd-singleton-eq-range--42018a34564c7bb1688606d9",
  "source": {
    "blob": "ea2ed97c2448be9f86a63441533a9ff830776d66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 421,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42018a34564c7bb1688606d9fd2afc80d406174166840bcda79ab0a7ff65c995",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08cced71-10a8-3418-5d40-9b81a870e465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_snd_singleton_eq_range : (Prod.snd ⁻¹' {b} : Set (α × β)) = range (·, b) := by
  grind

end

/-! ### Lemmas about `inclusion`, the injection of subtypes induced by `⊆` -/

/-! ### Decidability instances for sets -/

variable (a b : α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant35930ae86307ef48a3f0f1d0caeefb2549fe72d91a46f7430a6998ed1978c3aa.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea2ed97c2448be9f86a63441533a9ff830776d66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
