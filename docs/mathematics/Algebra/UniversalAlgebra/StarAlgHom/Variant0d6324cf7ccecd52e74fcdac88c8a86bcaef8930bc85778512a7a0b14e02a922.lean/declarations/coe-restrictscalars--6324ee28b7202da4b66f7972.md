# coe_restrictScalars'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47d8e9ef-5ede-8b48-5a36-f8c709389516",
  "kind": "lemma",
  "lexical_name": "coe_restrictScalars'",
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
  "slug": "coe-restrictscalars--6324ee28b7202da4b66f7972",
  "source": {
    "blob": "a01fbd85db0a9ff3eb78298d5ec6b2665056a65f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 277,
    "path": "GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6324ee28b7202da4b66f79727fb870cf95685602fe2337b6500b9ba332408c99",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47d8e9ef-5ede-8b48-5a36-f8c709389516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_restrictScalars' (f : A →⋆ₙₐ[S] B) : (f.restrictScalars R : A → B) = f := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant0d6324cf7ccecd52e74fcdac88c8a86bcaef8930bc85778512a7a0b14e02a922.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01fbd85db0a9ff3eb78298d5ec6b2665056a65f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
