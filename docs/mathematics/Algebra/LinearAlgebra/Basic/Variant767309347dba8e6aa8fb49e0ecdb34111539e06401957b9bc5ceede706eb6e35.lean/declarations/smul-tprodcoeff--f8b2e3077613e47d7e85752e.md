# smul_tprodCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebd5b164fd9e2a48d612507faf9d89c2f90b222",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d96d73a-7504-82d3-06f0-5934b388a3fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:262c944f-aec0-7052-6c0d-68c28a805331",
  "kind": "theorem",
  "lexical_name": "smul_tprodCoeff",
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
  "slug": "smul-tprodcoeff--f8b2e3077613e47d7e85752e",
  "source": {
    "blob": "bebd5b164fd9e2a48d612507faf9d89c2f90b222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b2e3077613e47d7e85752ed2fb3672017aeff02bb0e5375249b87700f3295a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262c944f-aec0-7052-6c0d-68c28a805331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_tprodCoeff [DecidableEq ι] (z : R) (f : Π i, s i) (i : ι) (r : R₁) [SMul R₁ R]
    [IsScalarTower R₁ R R] [SMul R₁ (s i)] [IsScalarTower R₁ R (s i)] :
    tprodCoeff R z (update f i (r • f i)) = tprodCoeff R (r • z) f := by
  have h₁ : r • z = r • (1 : R) * z := by rw [smul_mul_assoc, one_mul]
  have h₂ : r • f i = (r • (1 : R)) • f i := (smul_one_smul _ _ _).symm
  rw [h₁, h₂]
  exact smul_tprodCoeff_aux z f i _

/-- Construct an `AddMonoidHom` from `(⨂[R] i, s i)` to some space `F` from a function
`φ : (R × Π i, s i) → F` with the appropriate properties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant767309347dba8e6aa8fb49e0ecdb34111539e06401957b9bc5ceede706eb6e35.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebd5b164fd9e2a48d612507faf9d89c2f90b222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
