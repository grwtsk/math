# comapQuotientEquivOfSurj_symm_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2154c08f-06f1-e5e6-96d6-f6b7ab9fe6cc",
  "kind": "lemma",
  "lexical_name": "comapQuotientEquivOfSurj_symm_mk'",
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
  "slug": "comapquotientequivofsurj-symm-mk--2029b11c14bb75ea9db16c05",
  "source": {
    "blob": "dad8f892e37ee4b5f079e7d683999c172434f64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 345,
    "path": "GRWTSK/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2029b11c14bb75ea9db16c05a8d8010f4106f77fdf624630ee3a6f98cb2cc8da",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2154c08f-06f1-e5e6-96d6-f6b7ab9fe6cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma comapQuotientEquivOfSurj_symm_mk' (c : RingCon M) (f : N ≃+* M)
    {d : RingCon N} (hcd : d = c.comap f) (x : N) :
    (comapQuotientEquivOfSurj c (f : N →+* M) f.surjective hcd).symm ⟦f x⟧ = ↑x := by
  convert! RingEquiv.symm_apply_apply _ _
  rw [comapQuotientEquivOfSurj_mk, RingEquiv.coe_toRingHom]
  rfl

/-- The **second isomorphism theorem for semirings**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variantcff77568d74ce0a9337e5c321a97bcc3febce7e211870e8ed0094575326d301b.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad8f892e37ee4b5f079e7d683999c172434f64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
