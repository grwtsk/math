# of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d9e52ea-e674-5a12-15a4-d7d0f62b8e2d",
  "kind": "theorem",
  "lexical_name": "of_injective",
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
  "slug": "of-injective--0ccaf25fa1051cde5f4349f4",
  "source": {
    "blob": "205069b95fe5c731536039c567caa547510dd232",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 219,
    "path": "GRWTSK/Algebra/Ring/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ccaf25fa1051cde5f4349f461820a16b2da03289a288916e4e1af8b08d8f199",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9e52ea-e674-5a12-15a4-d7d0f62b8e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_injective [IsDirectedOrder ι] [DirectedSystem G fun i j h ↦ f' i j h]
    (hf : ∀ i j hij, Function.Injective (f' i j hij)) (i) :
    Function.Injective (of G (fun i j h ↦ f' i j h) i) :=
  have := Nonempty.intro i
  ((ringEquiv _ _).comp_injective _).mp
    fun _ _ eq ↦ DirectLimit.mk_injective f' hf _ (by simpa only [← ringEquiv_of])

section functorial

variable {f : ∀ i j, i ≤ j → G i →+* G j}
variable {G' : ι → Type*} [∀ i, CommRing (G' i)]
variable {f' : ∀ i j, i ≤ j → G' i →+* G' j}
variable {G'' : ι → Type*} [∀ i, CommRing (G'' i)]
variable {f'' : ∀ i j, i ≤ j → G'' i →+* G'' j}

/--
Consider direct limits `lim G` and `lim G'` with direct system `f` and `f'` respectively, any
family of ring homomorphisms `gᵢ : Gᵢ ⟶ G'ᵢ` such that `g ∘ f = f' ∘ g` induces a ring
homomorphism `lim G ⟶ lim G'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantfbadd6456cd11b3424548947223a4b1ca0cf36a554ea054e97b6b2eeec9cda6a.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `205069b95fe5c731536039c567caa547510dd232` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
