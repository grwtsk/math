# MemSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c5443e7810e4a85a906d2fa576d7b2fda06bb59a8be27be43ca3d2ab48c065f",
  "kind": "inductive",
  "lexical_name": "MemSpan",
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
  "slug": "memspan--27376af78bce33ac05e9a8b6",
  "source": {
    "blob": "1b2a5b2d9bcc1bddc3035b2e7090ce7509c39a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27376af78bce33ac05e9a8b6103f0349bd949568a4fdcc5caa57b9b709122e0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c5443e7810e4a85a906d2fa576d7b2fda06bb59a8be27be43ca3d2ab48c065f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private inductive MemSpan (S : Set (ℙ K V)) : ℙ K V → Prop
  | of_mem (x : ℙ K V) (hx : x ∈ S) : MemSpan S x
  | add (v w : V) (hv : v ≠ 0) (hw : w ≠ 0) (hvw : v + w ≠ 0) :
      MemSpan S (Projectivization.mk K v hv) →
      MemSpan S (Projectivization.mk K w hw) → MemSpan S (Projectivization.mk K (v + w) hvw)

/-- The span of a set of points in projective space is a subspace. -/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2a5b2d9bcc1bddc3035b2e7090ce7509c39a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
