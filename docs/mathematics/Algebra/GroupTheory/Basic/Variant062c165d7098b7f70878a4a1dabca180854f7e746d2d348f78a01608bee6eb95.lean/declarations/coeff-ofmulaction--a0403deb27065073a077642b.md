# coeff_ofMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b742457-4d75-6002-0e34-d60d80a11a39",
  "kind": "theorem",
  "lexical_name": "coeff_ofMulAction",
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
  "slug": "coeff-ofmulaction--a0403deb27065073a077642b",
  "source": {
    "blob": "1d6533a78c2dc55557f6ca09a80c1b6a3826edcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 479,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0403deb27065073a077642bccab523fc93613971eb9f8f307d0d5d8aba66a2c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b742457-4d75-6002-0e34-d60d80a11a39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_ofMulAction {H : Type*} [MulAction G H] (g : G) (f : k[H]) (h : H) :
    (ofMulAction k G H g f).coeff h = f.coeff (g⁻¹ • h) := by
  conv_lhs => rw [← smul_inv_smul g h]
  set h' := g⁻¹ • h
  have hg : Function.Injective (g • · : H → H) := by
    intro h₁ h₂
    simp
  simp [ofMulAction_def, hg]

@[deprecated (since := "2026-06-18")] alias ofMulAction_apply := coeff_ofMulAction

-- Noncomputable since `MonoidAlgebra.instMul` is now noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6533a78c2dc55557f6ca09a80c1b6a3826edcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
