# smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c35ba65c-4419-0a42-4703-94d9f1086775",
  "kind": "theorem",
  "lexical_name": "smul",
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
  "slug": "smul--4ae25baa1b18e103bbc278d2",
  "source": {
    "blob": "6cbb76a1c0f1b5dc9dc9813b653c2014c7d7aa9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 86,
    "path": "GRWTSK/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ae25baa1b18e103bbc278d26f3e47fef799571bd174efe0dec84ceaf14469d0",
  "verification": {
    "reference": "docs/verification/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c35ba65c-4419-0a42-4703-94d9f1086775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul (hxy : x ≡ y [SMOD U]) (c : R) : c • x ≡ c • y [SMOD U] := by
  rw [SModEq.def] at hxy ⊢
  simp_rw [Quotient.mk_smul, hxy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SModEq/Variantf4fc935b54bc7417d068c4360b5485fb965f65dbba81c534f0bfa5e2710cfd58.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cbb76a1c0f1b5dc9dc9813b653c2014c7d7aa9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
