# circulant_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45c05607-f4fd-912c-c96e-66de51ab4b38",
  "kind": "theorem",
  "lexical_name": "circulant_injective",
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
  "slug": "circulant-injective--10650faaf7a65a4b4b159a59",
  "source": {
    "blob": "d1b063e5490634b283d35d0b80a41fcb315eb41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10650faaf7a65a4b4b159a592e0e7953852e4a3c02c82679643c8971e6f0d40f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45c05607-f4fd-912c-c96e-66de51ab4b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circulant_injective [AddGroup n] : Injective (circulant : (n → α) → Matrix n n α) := by
  intro v w h
  ext k
  rw [← circulant_col_zero_eq v, ← circulant_col_zero_eq w, h]
#align matrix.circulant_injective Matrix.circulant_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b063e5490634b283d35d0b80a41fcb315eb41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
