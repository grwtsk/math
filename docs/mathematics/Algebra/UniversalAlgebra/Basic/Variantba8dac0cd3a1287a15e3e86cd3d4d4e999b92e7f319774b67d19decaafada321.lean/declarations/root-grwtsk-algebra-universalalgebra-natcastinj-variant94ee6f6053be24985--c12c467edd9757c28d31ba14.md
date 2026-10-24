# _root_.GRWTSK.Algebra.UniversalAlgebra.NatCastInj.Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.ZeroHom.ENatMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31e705dfd0e8bcb7939d4faa4bfc5929f1c6c099c7b7f1804aebbb2e1ca204d3",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.UniversalAlgebra.NatCastInj.Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.ZeroHom.ENatMap",
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
  "slug": "root-grwtsk-algebra-universalalgebra-natcastinj-variant94ee6f6053be24985--c12c467edd9757c28d31ba14",
  "source": {
    "blob": "24d90993f7b56791a353154b8dac7da436a4a6f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 397,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c12c467edd9757c28d31ba14123f47fd58a452dd6150eb5d8685b001f84782e7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31e705dfd0e8bcb7939d4faa4bfc5929f1c6c099c7b7f1804aebbb2e1ca204d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def _root_.GRWTSK.Algebra.UniversalAlgebra.NatCastInj.Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.ZeroHom.ENatMap {N : Type*} [Zero N] (f : ZeroHom ℕ N) :
    ZeroHom ℕ∞ (WithTop N) where
  toFun := ENat.map f
  map_zero' := by simp

/-- A version of `WithTop.map` for `AddHom`s. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24d90993f7b56791a353154b8dac7da436a4a6f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
