# kerCompPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a175e6e8f19d6373e37c2662f5ab2012225c2a714bcc63c1c8af0cd6902116f",
  "kind": "def",
  "lexical_name": "kerCompPreimage",
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
  "slug": "kercomppreimage--5ebd0e770cdf9a024a0d518f",
  "source": {
    "blob": "a08976f024735c867be48366f52b72c3bcd4aec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 574,
    "path": "GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ebd0e770cdf9a024a0d518f0a9bba754f6cd9fbf624bcea4b58624237512b9b",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a175e6e8f19d6373e37c2662f5ab2012225c2a714bcc63c1c8af0cd6902116f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kerCompPreimage (Q : Generators S T) (P : Generators R S) (x : Q.ker) :
    (Q.comp P).ker := by
  refine ⟨x.1.sum fun n r ↦ ?_, ?_⟩
  · -- The use of `refine` is intentional to control the elaboration order
    -- so that the term has type `(Q.comp P).Ring` and not `MvPolynomial (Q.vars ⊕ P.vars) R`
    refine rename ?_ (P.σ r) * monomial ?_ 1
    exacts [Sum.inr, n.mapDomain Sum.inl]
  · simp only [ker_eq_ker_aeval_val, RingHom.mem_ker]
    conv_rhs => rw [← aeval_val_eq_zero x.2, ← x.1.support_sum_monomial_coeff]
    simp only [Finsupp.sum, map_sum, map_mul, aeval_rename, Function.comp_def, comp_val,
      Sum.elim_inr, aeval_monomial, map_one, Finsupp.prod_mapDomain_index_inj Sum.inl_injective,
      Sum.elim_inl, one_mul]
    congr! with v i
    simp_rw [← IsScalarTower.toAlgHom_apply R, ← comp_aeval, AlgHom.comp_apply, P.aeval_val_σ,
      coeff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a08976f024735c867be48366f52b72c3bcd4aec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
