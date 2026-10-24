# commApplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c1c4c80fd511e6f73389db3e4cc1018f796c69a8ed80a0e1d5f3f9939e37f9b",
  "kind": "instance",
  "lexical_name": "commApplicative",
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
  "slug": "commapplicative--ef5a2903ee0859c8e45b33c1",
  "source": {
    "blob": "281c0385f291bb5357a6e8d20dfdb8db74fa04fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef5a2903ee0859c8e45b33c107635b1bf1429ae59dba51b5ac05354db442b24e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c1c4c80fd511e6f73389db3e4cc1018f796c69a8ed80a0e1d5f3f9939e37f9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commApplicative : CommApplicative Finset :=
  { Finset.lawfulApplicative with
    commutative_prod := fun s t => by
      simp_rw [seq_def, fmap_def, sup_image, sup_eq_biUnion]
      change (s.biUnion fun a => t.image fun b => (a, b))
        = t.biUnion fun b => s.image fun a => (a, b)
      trans s ×ˢ t <;> [rw [product_eq_biUnion]; rw [product_eq_biUnion_right]] }

end Applicative

/-! ### Monad -/


section Monad

variable [∀ P, Decidable P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `281c0385f291bb5357a6e8d20dfdb8db74fa04fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
