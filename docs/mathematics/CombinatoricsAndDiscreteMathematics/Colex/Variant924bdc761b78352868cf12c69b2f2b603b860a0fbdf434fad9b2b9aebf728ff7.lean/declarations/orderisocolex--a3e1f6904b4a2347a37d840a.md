# orderIsoColex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4d8d10ad5552143fd2ef699d825dff47580bbf5570b5fd58cbc388a51ea8be2",
  "kind": "def",
  "lexical_name": "orderIsoColex",
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
  "slug": "orderisocolex--a3e1f6904b4a2347a37d840a",
  "source": {
    "blob": "edc35cfcc4b517ac7d0b0068e6cc3291e9b21fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 564,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3e1f6904b4a2347a37d840a67054237dc2dec8dd9f223a70a381e052b8e517f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4d8d10ad5552143fd2ef699d825dff47580bbf5570b5fd58cbc388a51ea8be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def orderIsoColex : ℕ ≃o Colex ℕ where
  toFun n := Colex.toColex (equivBitIndices n)
  invFun s := equivBitIndices.symm s.ofColex
  left_inv n := equivBitIndices.symm_apply_apply n
  right_inv s :=  Finset.toColex_inj.2 (equivBitIndices.apply_symm_apply s.ofColex)
  map_rel_iff' := by simp [← (Finset.geomSum_le_geomSum_iff_toColex_le_toColex rfl.le),
    toFinset_bitIndices_twoPowSum]

end Nat
end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc35cfcc4b517ac7d0b0068e6cc3291e9b21fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
