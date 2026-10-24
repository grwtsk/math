# tsirelson_inequality_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c1978d2-ac32-e992-5f82-6b7f7544e8da",
  "kind": "theorem",
  "lexical_name": "tsirelson_inequality_aux",
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
  "slug": "tsirelson-inequality-aux--d420660c3acd394792f36a19",
  "source": {
    "blob": "3309e6f78fe2511496b7cdaada15394d32a514ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 178,
    "path": "GRWTSK/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d420660c3acd394792f36a19ff1f15c37d6ba4d51cb0239ac9a935bb63e89678",
  "verification": {
    "reference": "docs/verification/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c1978d2-ac32-e992-5f82-6b7f7544e8da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsirelson_inequality_aux : √2 * √2 ^ 3 = √2 * (2 * √2⁻¹ + 4 * (√2⁻¹ * 2⁻¹)) := by
  ring_nf
  rw [mul_inv_cancel (ne_of_gt (Real.sqrt_pos.2 (show (2 : ℝ) > 0 by norm_num)))]
  convert congr_arg (· ^ 2) (@Real.sq_sqrt 2 (by norm_num)) using 1 <;>
    (try simp only [← pow_mul]) <;> norm_num
#align tsirelson_inequality.tsirelson_inequality_aux TsirelsonInequality.tsirelson_inequality_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3309e6f78fe2511496b7cdaada15394d32a514ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
