# isBigO_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d07ae10a-7c71-f6c1-5901-ca7ee9956166",
  "kind": "theorem",
  "lexical_name": "isBigO_pure",
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
  "slug": "isbigo-pure--8e4565eb55b9d85a5b69f809",
  "source": {
    "blob": "cb3fbeb6991be59732f8c65689acded42eb38e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 370,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e4565eb55b9d85a5b69f8093bcf3e5a76d37cea88cd094fcb0fe050c7f60277",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d07ae10a-7c71-f6c1-5901-ca7ee9956166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_pure {x} : f'' =O[pure x] g'' ↔ g'' x = 0 → f'' x = 0 :=
  calc
    f'' =O[pure x] g'' ↔ (fun _y : α => f'' x) =O[pure x] fun _ => g'' x := isBigO_congr rfl rfl
    _ ↔ g'' x = 0 → f'' x = 0 := isBigO_const_const_iff _

end ZeroConst

/-! ### Sum -/

section Sum

variable {ι : Type*} {A : ι → α → E'} {C : ι → ℝ} {s : Finset ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb3fbeb6991be59732f8c65689acded42eb38e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
