# Fin.circulant_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79b91a4f-205a-1bce-eaef-8ac18d65bf9f",
  "kind": "theorem",
  "lexical_name": "Fin.circulant_mul",
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
  "slug": "fin-circulant-mul--9ff85cb5256835d9982c8266",
  "source": {
    "blob": "d1b063e5490634b283d35d0b80a41fcb315eb41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ff85cb5256835d9982c82664fa9e9af6457e8ebd4e4e019dcc7bfb90fcb8ca9",
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

Occurrence: `result:79b91a4f-205a-1bce-eaef-8ac18d65bf9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fin.circulant_mul [Semiring α] :
    ∀ {n} (v w : Fin n → α), circulant v * circulant w = circulant (mulVec (circulant v) w)
  | 0 => by simp [Injective]
  | n + 1 => Matrix.circulant_mul
#align matrix.fin.circulant_mul Matrix.Fin.circulant_mul

/-- Multiplication of circulant matrices commutes when the elements do. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Circulant/Variante8a87cd415a062001e587e62a9adbeec58b14581067519a92e7e08f789246526.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b063e5490634b283d35d0b80a41fcb315eb41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
