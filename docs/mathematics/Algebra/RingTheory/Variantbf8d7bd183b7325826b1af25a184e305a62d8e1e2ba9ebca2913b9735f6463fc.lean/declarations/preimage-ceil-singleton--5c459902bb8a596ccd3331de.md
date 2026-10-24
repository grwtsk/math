# preimage_ceil_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35b44cc8-35bf-61fd-f7aa-d8cc5587d0e9",
  "kind": "theorem",
  "lexical_name": "preimage_ceil_singleton",
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
  "slug": "preimage-ceil-singleton--5c459902bb8a596ccd3331de",
  "source": {
    "blob": "6c269ea74648e5511200290fad239669ae7eb3a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 636,
    "path": "GRWTSK/Algebra/Ring/Variantbf8d7bd183b7325826b1af25a184e305a62d8e1e2ba9ebca2913b9735f6463fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c459902bb8a596ccd3331de5ab7b56dbbb2392fdf277cef10c1b05b1359cc33",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantbf8d7bd183b7325826b1af25a184e305a62d8e1e2ba9ebca2913b9735f6463fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35b44cc8-35bf-61fd-f7aa-d8cc5587d0e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_ceil_singleton (m : ℤ) : (ceil : R → ℤ) ⁻¹' {m} = Ioc ((m : R) - 1) m :=
  ext fun _ => ceil_eq_iff

variable [IsOrderedRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantbf8d7bd183b7325826b1af25a184e305a62d8e1e2ba9ebca2913b9735f6463fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantbf8d7bd183b7325826b1af25a184e305a62d8e1e2ba9ebca2913b9735f6463fc.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c269ea74648e5511200290fad239669ae7eb3a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
