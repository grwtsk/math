# upperBounds_countableSupClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a1c2938-50de-fe65-e8d7-a85a1a46703d",
  "kind": "lemma",
  "lexical_name": "upperBounds_countableSupClosure",
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
  "slug": "upperbounds-countablesupclosure--7f557e05583481ec82e21510",
  "source": {
    "blob": "5c417fd39791090d1e049fbbf79221ab2c46fbc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 256,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f557e05583481ec82e21510ddfa973676369c4220d90fc5c1268d65a64ac809",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a1c2938-50de-fe65-e8d7-a85a1a46703d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_dual (attr := simp)] lemma upperBounds_countableSupClosure (s : Set α) :
    upperBounds (countableSupClosure s) = upperBounds s :=
  (upperBounds_mono_set subset_countableSupClosure).antisymm <| by
    intro a ha b hb
    rw [mem_countableSupClosure_iff] at hb
    obtain ⟨t, hts, ht_ne, ht_c, ht_lub⟩ := hb
    have hat : a ∈ upperBounds t := fun x hx ↦ ha (hts hx)
    exact (isLUB_le_iff ht_lub).mpr hat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c417fd39791090d1e049fbbf79221ab2c46fbc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
