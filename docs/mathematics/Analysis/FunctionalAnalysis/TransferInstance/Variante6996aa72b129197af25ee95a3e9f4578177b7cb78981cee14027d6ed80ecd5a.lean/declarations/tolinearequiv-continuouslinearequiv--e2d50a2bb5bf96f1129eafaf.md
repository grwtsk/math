# toLinearEquiv_continuousLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecf3f740-be87-a18b-fe76-ca4d0a7f8345",
  "kind": "lemma",
  "lexical_name": "toLinearEquiv_continuousLinearEquiv",
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
  "slug": "tolinearequiv-continuouslinearequiv--e2d50a2bb5bf96f1129eafaf",
  "source": {
    "blob": "495b04dafa8a6ddd8b38b11f17caf340f47b72cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 63,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2d50a2bb5bf96f1129eafaf06af7154bc7b4676a2918c47b7b1ba7748c54534",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecf3f740-be87-a18b-fe76-ca4d0a7f8345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toLinearEquiv_continuousLinearEquiv (e : α ≃+ β) :
    letI := e.topologicalSpace
    letI := e.module R
    (e.continuousLinearEquiv R).toLinearEquiv = e.linearEquiv R := rfl

end AddEquiv

@[deprecated (since := "2026-08-10")]
alias Equiv.continuousLinearEquiv := AddEquiv.continuousLinearEquiv

@[deprecated (since := "2026-08-10")]
alias Equiv.toLinearEquiv_continuousLinearEquiv := AddEquiv.toLinearEquiv_continuousLinearEquiv

section ContinuousLinearEquiv

variable [Semiring R]

/-- Given a continuous multiplicative equivalence `e : α ≃ₜ* β`, if `β` is a topological group,
then so is `α`. -/
@[to_additive
/-- Given a continuous additive equivalence `e : α ≃ₜ+ β`, if `β` is a topological additive group,
then so is `α`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TransferInstance/Variante6996aa72b129197af25ee95a3e9f4578177b7cb78981cee14027d6ed80ecd5a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `495b04dafa8a6ddd8b38b11f17caf340f47b72cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
