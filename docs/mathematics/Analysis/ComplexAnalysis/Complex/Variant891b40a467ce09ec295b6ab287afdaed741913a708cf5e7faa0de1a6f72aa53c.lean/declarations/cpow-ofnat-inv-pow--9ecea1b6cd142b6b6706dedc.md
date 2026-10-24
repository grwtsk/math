# cpow_ofNat_inv_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8a5826e-cd52-9e02-2784-14a231d6290c",
  "kind": "lemma",
  "lexical_name": "cpow_ofNat_inv_pow",
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
  "slug": "cpow-ofnat-inv-pow--9ecea1b6cd142b6b6706dedc",
  "source": {
    "blob": "c38c8678c15917cef0d58ae6a00bdeffe8d280f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 153,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ecea1b6cd142b6b6706dedc7107cb50b1f76bd900e55de8fed8678161c17aee",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8a5826e-cd52-9e02-2784-14a231d6290c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cpow_ofNat_inv_pow (x : ℂ) (n : ℕ) [n.AtLeastTwo] :
    (x ^ ((ofNat(n) : ℂ)⁻¹)) ^ (ofNat(n) : ℕ) = x :=
  cpow_nat_inv_pow _ (NeZero.ne n)

/-- A version of `Complex.cpow_int_mul` with RHS that matches `Complex.cpow_mul`.

The assumptions on the arguments are needed
because the equality fails, e.g., for `x = -I`, `n = 2`, `y = 1/2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38c8678c15917cef0d58ae6a00bdeffe8d280f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
