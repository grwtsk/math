# Even.pow_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2553261-ee51-e1e9-cc54-9475707f9752",
  "kind": "theorem",
  "lexical_name": "Even.pow_abs",
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
  "slug": "even-pow-abs--cb806d87b46d9ecf3da6ffbe",
  "source": {
    "blob": "af4dddf15ba4b1134df54deca2043d475dfa4940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 529,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Parity/Variant7f448ec7a7d63a78759873a7f6857f0d798471e831e6c32220a70a4ac3dd8bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb806d87b46d9ecf3da6ffbecf35e632e8930984ea55622c5e6d5cde7982b7c9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Parity/Variant7f448ec7a7d63a78759873a7f6857f0d798471e831e6c32220a70a4ac3dd8bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2553261-ee51-e1e9-cc54-9475707f9752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Even.pow_abs {p : ℕ} (hp : Even p) (a : R) : |a| ^ p = a ^ p := by
  rw [← abs_pow, abs_eq_self]
  exact hp.pow_nonneg _
#align even.pow_abs Even.pow_abs

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Parity/Variant7f448ec7a7d63a78759873a7f6857f0d798471e831e6c32220a70a4ac3dd8bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Parity/Variant7f448ec7a7d63a78759873a7f6857f0d798471e831e6c32220a70a4ac3dd8bb1.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af4dddf15ba4b1134df54deca2043d475dfa4940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
