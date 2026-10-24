# instCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ecc9acb10cb6a744e93c254fe31874d3848fadc5da1abbefda5aa0bea42576f",
  "kind": "instance",
  "lexical_name": "instCommRing",
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
  "slug": "instcommring--c7bb18a6a511efe1f37b8984",
  "source": {
    "blob": "77f1b2d94fb067ab42cb8c90739ee2b3811fadde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 112,
    "path": "GRWTSK/Algebra/UInt/Varianta972e3a60590b49a6798daec6521c80f933b72a9419dd13b72f92c926825dad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7bb18a6a511efe1f37b8984e8be979daad580bef7d805a40026485748c9338f",
  "verification": {
    "reference": "docs/verification/Algebra/UInt/Varianta972e3a60590b49a6798daec6521c80f933b72a9419dd13b72f92c926825dad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ecc9acb10cb6a744e93c254fe31874d3848fadc5da1abbefda5aa0bea42576f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
      noncomputable local instance instCommRing : CommRing $typeName :=
        Function.Injective.commRing toBitVec toBitVec_injective
          toBitVec_zero toBitVec_one (fun _ _ => toBitVec_add) (fun _ _ => toBitVec_mul)
          (fun _ => toBitVec_neg) (fun _ _ => toBitVec_sub)
          (fun _ _ => toBitVec_nsmul _ _) (fun _ _ => toBitVec_zsmul _ _)
          (fun _ _ => toBitVec_pow _ _)
          toBitVec_natCast toBitVec_intCast

      namespace CommRing
      attribute [scoped instance] instCommRing natCast intCast
      end CommRing

    end $typeName
  ))
  -- interpolating docstrings above is more trouble than it's worth
  let docString :=
    s!"To use this instance, use `open scoped {typeName'}.CommRing`.\n\n" ++
    "See the module docstring for an explanation"
  Lean.addDocStringCore (typeName'.mkStr "instCommRing") docString
  -- TODO: add these docstrings in core?
  -- Lean.addDocStringCore (typeName'.mkStr "instNatCast") docString
  -- Lean.addDocStringCore (typeName'.mkStr "instIntCast") docString

namespace UInt8

/-- Is this an uppercase ASCII letter? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UInt/Varianta972e3a60590b49a6798daec6521c80f933b72a9419dd13b72f92c926825dad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UInt/Varianta972e3a60590b49a6798daec6521c80f933b72a9419dd13b72f92c926825dad9.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f1b2d94fb067ab42cb8c90739ee2b3811fadde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
