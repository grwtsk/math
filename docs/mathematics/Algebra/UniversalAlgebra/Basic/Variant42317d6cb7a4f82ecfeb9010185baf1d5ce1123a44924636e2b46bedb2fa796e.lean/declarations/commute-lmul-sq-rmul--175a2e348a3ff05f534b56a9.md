# commute_lmul_sq_rmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d06e5f7-235f-d944-4698-d6164c2a6cc9",
  "kind": "theorem",
  "lexical_name": "commute_lmul_sq_rmul",
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
  "slug": "commute-lmul-sq-rmul--175a2e348a3ff05f534b56a9",
  "source": {
    "blob": "e6537fd332f236b6431606f60673827f9dd5f8c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 150,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:175a2e348a3ff05f534b56a9cb4ee75ae5f81e77659888a7c4291bce6fef0fa8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d06e5f7-235f-d944-4698-d6164c2a6cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_lmul_sq_rmul (a : A) : Commute (L (a * a)) (R a) :=
  AddMonoidHom.ext fun _ => IsJordan.lmul_lmul_comm_rmul _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant42317d6cb7a4f82ecfeb9010185baf1d5ce1123a44924636e2b46bedb2fa796e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6537fd332f236b6431606f60673827f9dd5f8c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
