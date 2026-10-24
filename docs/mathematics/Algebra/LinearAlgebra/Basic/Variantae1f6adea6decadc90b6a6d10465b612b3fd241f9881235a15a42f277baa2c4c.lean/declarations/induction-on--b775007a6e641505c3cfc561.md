# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "830345ad09252f2061e2457c2c26d77c91d4277d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 836,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da71eae6-318d-ea81-b995-24dc39f22ada",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:955de6f5-2d99-80f2-b7cc-6c4b9319d9bc",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--b775007a6e641505c3cfc561",
  "source": {
    "blob": "830345ad09252f2061e2457c2c26d77c91d4277d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 836,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b775007a6e641505c3cfc5614fab3d4a1a67946aebac946d336f2ed14ff33972",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:955de6f5-2d99-80f2-b7cc-6c4b9319d9bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on [Semiring k] [Monoid G] {p : MonoidAlgebra k G → Prop} (f : MonoidAlgebra k G)
    (hM : ∀ g, p (of k G g)) (hadd : ∀ f g : MonoidAlgebra k G, p f → p g → p (f + g))
    (hsmul : ∀ (r : k) (f), p f → p (r • f)) : p f := by
  refine' Finsupp.induction_linear f _ (fun f g hf hg => hadd f g hf hg) fun g r => _
  · simpa using hsmul 0 (of k G 1) (hM 1)
  · convert hsmul r (of k G g) (hM g)
    -- Porting note: Was `simp only`.
    rw [of_apply, smul_single', mul_one]
#align monoid_algebra.induction_on MonoidAlgebra.induction_on

end Algebra

section lift

variable [CommSemiring k] [Monoid G] [Monoid H]

variable {A : Type u₃} [Semiring A] [Algebra k A] {B : Type*} [Semiring B] [Algebra k B]

/-- `liftNCRingHom` as an `AlgHom`, for when `f` is an `AlgHom` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830345ad09252f2061e2457c2c26d77c91d4277d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
