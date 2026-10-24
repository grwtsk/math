# ofNat_toNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dcaffa6-937e-0ab2-b8cd-84ac360e763d",
  "kind": "theorem",
  "lexical_name": "ofNat_toNat",
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
  "slug": "ofnat-tonat--96d1f2c0355e862714d33bec",
  "source": {
    "blob": "ed549e69ff3cd9826612b6b3e1e912645126bd39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96d1f2c0355e862714d33bec88c1ad4498c01f26abd67c111444f2a20d81bf60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dcaffa6-937e-0ab2-b8cd-84ac360e763d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_toNat {n : ℕ} (v : Bitvec n) : Bitvec.ofNat n v.toNat = v := by
  cases' v with xs h
  -- Porting note: was `ext1`, but that now applies `Vector.ext` rather than `Subtype.ext`.
  apply Subtype.ext
  change Vector.toList _ = xs
  dsimp [Bitvec.toNat, bitsToNat]
  rw [← List.length_reverse] at h
  rw [← List.reverse_reverse xs, List.foldl_reverse]
  generalize xs.reverse = ys at h ⊢; clear xs
  induction' ys with ys_head ys_tail ys_ih generalizing n
  · cases h
    simp [Bitvec.ofNat]
  · simp only [← Nat.succ_eq_add_one, List.length] at h
    subst n
    simp only [Bitvec.ofNat, Vector.toList_cons, Vector.toList_nil, List.reverse_cons,
      Vector.toList_append, List.foldr]
    erw [addLsb_div_two, decide_addLsb_mod_two]
    congr
    apply ys_ih
    rfl
#align bitvec.of_nat_to_nat Bitvec.ofNat_toNat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant195521e170061309b23405e00cd053f102a53f143ea2c27de323ed067c0dd533.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed549e69ff3cd9826612b6b3e1e912645126bd39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
