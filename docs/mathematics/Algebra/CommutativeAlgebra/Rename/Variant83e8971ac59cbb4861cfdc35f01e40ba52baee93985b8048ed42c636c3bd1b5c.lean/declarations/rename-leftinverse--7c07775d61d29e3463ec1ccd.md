# rename_leftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f9213b9-114a-bfd2-8fad-a388eaa0bf5c",
  "kind": "theorem",
  "lexical_name": "rename_leftInverse",
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
  "slug": "rename-leftinverse--7c07775d61d29e3463ec1ccd",
  "source": {
    "blob": "5badf02217b318a81d10530fffe0cf2b95f3a1c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 124,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c07775d61d29e3463ec1ccd228ac2abbdea4380b3e0396689ecb839b6705ddb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f9213b9-114a-bfd2-8fad-a388eaa0bf5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rename_leftInverse {f : σ → τ} {g : τ → σ} (hf : Function.LeftInverse f g) :
    Function.LeftInverse (rename f : MvPolynomial σ R → MvPolynomial τ R) (rename g) := by
  intro x
  simp [hf.comp_eq_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5badf02217b318a81d10530fffe0cf2b95f3a1c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
