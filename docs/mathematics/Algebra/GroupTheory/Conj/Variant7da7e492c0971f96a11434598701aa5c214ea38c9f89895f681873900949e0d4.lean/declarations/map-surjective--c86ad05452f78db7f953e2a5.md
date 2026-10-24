# map_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29115f8951e0f85264ae00c554357bd9dd5b7cac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46fc4871-5921-94ff-5b2d-309dfbb4f20a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbe0d958-5121-3ab2-5c88-478648ee73ef",
  "kind": "theorem",
  "lexical_name": "map_surjective",
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
  "slug": "map-surjective--c86ad05452f78db7f953e2a5",
  "source": {
    "blob": "29115f8951e0f85264ae00c554357bd9dd5b7cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 209,
    "path": "GRWTSK/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c86ad05452f78db7f953e2a546d659139295a15bdd54eac425c564e49d88e421",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbe0d958-5121-3ab2-5c88-478648ee73ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_surjective {f : α →* β} (hf : Function.Surjective f) :
    Function.Surjective (ConjClasses.map f) := by
  intro b
  obtain ⟨b, rfl⟩ := ConjClasses.mk_surjective b
  obtain ⟨a, rfl⟩ := hf b
  exact ⟨ConjClasses.mk a, rfl⟩
#align conj_classes.map_surjective ConjClasses.map_surjective

-- Porting note: This has not been adapted to mathlib4, is it still accurate?
library_note "slow-failing instance priority"/--
Certain instances trigger further searches when they are considered as candidate instances;
these instances should be assigned a priority lower than the default of 1000 (for example, 900).

The conditions for this rule are as follows:
 * a class `C` has instances `instT : C T` and `instT' : C T'`
 * types `T` and `T'` are both specializations of another type `S`
 * the parameters supplied to `S` to produce `T` are not (fully) determined by `instT`,
   instead they have to be found by instance search
If those conditions hold, the instance `instT` should be assigned lower priority.

For example, suppose the search for an instance of `DecidableEq (Multiset α)` tries the
candidate instance `Con.quotient.decidableEq (c : Con M) : decidableEq c.quotient`.
Since `Multiset` and `Con.quotient` are both quotient types, unification will check
that the relations `List.perm` and `c.toSetoid.r` unify. However, `c.toSetoid` depends on
a `Mul M` instance, so this unification triggers a search for `Mul (List α)`;
this will traverse all subclasses of `Mul` before failing.
On the other hand, the search for an instance of `DecidableEq (Con.quotient c)` for `c : Con M`
can quickly reject the candidate instance `Multiset.decidableEq` because the type of
`List.perm : List ?m_1 → List ?m_1 → Prop` does not unify with `M → M → Prop`.
Therefore, we should assign `Con.quotient.decidableEq` a lower priority because it fails slowly.
(In terms of the rules above, `C := DecidableEq`, `T := Con.quotient`,
`instT := Con.quotient.decidableEq`, `T' := Multiset`, `instT' := Multiset.decidableEq`,
and `S := Quot`.)

If the type involved is a free variable (rather than an instantiation of some type `S`),
the instance priority should be even lower, see Note [lower instance priority].
-/

-- see Note [slow-failing instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Conj/Variant7da7e492c0971f96a11434598701aa5c214ea38c9f89895f681873900949e0d4.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29115f8951e0f85264ae00c554357bd9dd5b7cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
