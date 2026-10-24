# norm_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4341ff39-33b4-4037-39c6-19ed63ff39ea",
  "kind": "lemma",
  "lexical_name": "norm_snd",
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
  "slug": "norm-snd--a4b2fe3da23a5d07c1d88e09",
  "source": {
    "blob": "6eafeef1ab43fa57c3defad6ac2fad549647f3bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4b2fe3da23a5d07c1d88e097a8f5bd7975e9b68315c5395723ee42a4ee052e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4341ff39-33b4-4037-39c6-19ed63ff39ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma norm_snd [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F] [Nontrivial F]  :
    ‖snd 𝕜 E F‖ = 1 := by
  refine le_antisymm (norm_snd_le ..) ?_
  let ⟨f, hf⟩ := exists_ne (0 : F)
  have : ‖f‖ ≤ _ * max ‖(0 : E)‖ ‖f‖ := (snd 𝕜 E F).le_opNorm (0, f)
  rw [norm_zero, max_eq_right (norm_nonneg f)] at this
  rwa [← mul_le_mul_iff_of_pos_right (norm_pos_iff.mpr hf), one_mul]

end FirstSecond

end ContinuousLinearMap

end Normed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eafeef1ab43fa57c3defad6ac2fad549647f3bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
