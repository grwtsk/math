# distribHaarChar_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5faae1a-1a8c-1e27-e3bf-3a607be02795",
  "kind": "lemma",
  "lexical_name": "distribHaarChar_mul",
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
  "slug": "distribhaarchar-mul--bce3a2fb0ae543e5a7a309ab",
  "source": {
    "blob": "d08b0952428ce78a66343ae1bce43afc2f4dd96e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 87,
    "path": "GRWTSK/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bce3a2fb0ae543e5a7a309ab1d315e6d56f0a57e80172b19fcc6620343c1dfb0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5faae1a-1a8c-1e27-e3bf-3a607be02795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma distribHaarChar_mul (g : G) (s : Set A) : distribHaarChar A g * μ s = μ (g • s) := by
  have : (DomMulAct.mk g • μ) s = μ (g • s) := by simp [dmaSMul_apply]
  rw [eq_comm, ← nnreal_smul_coe_apply, ← addHaarScalarFactor_smul_eq_distribHaarChar μ,
    ← this, ← smul_apply, ← isAddLeftInvariant_eq_smul_of_regular]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d08b0952428ce78a66343ae1bce43afc2f4dd96e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
