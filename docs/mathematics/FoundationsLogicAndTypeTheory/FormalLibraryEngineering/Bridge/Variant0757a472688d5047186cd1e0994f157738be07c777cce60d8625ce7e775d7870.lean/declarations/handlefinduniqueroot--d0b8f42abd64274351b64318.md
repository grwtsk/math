# handleFindUniqueRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6c04a17066b342f13fe8c65af5cc0537a221244114b45feba36d48569db0763",
  "kind": "def",
  "lexical_name": "handleFindUniqueRoot",
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
  "slug": "handlefinduniqueroot--d0b8f42abd64274351b64318",
  "source": {
    "blob": "91ef6f30eb5b62bbe5255296e121fb7460609556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 997,
    "line": 953,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0b8f42abd64274351b64318695e7389e85929adcd26e91231eade1968f9ef0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6c04a17066b342f13fe8c65af5cc0537a221244114b45feba36d48569db0763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleFindUniqueRoot (req : FindUniqueRootRequest) : Json :=
  let I := req.interval.toInterval
  let cfg : EvalConfig := { taylorDepth := req.taylorDepth }

  -- Check if Newton contraction holds (computable version)
  let contracts := Validity.RootFinding.checkNewtonContractsCore req.expr I cfg

  -- Also get the Newton step result for the refined interval
  let newtonResult := Validity.RootFinding.newtonStepCore req.expr I cfg

  match newtonResult with
  | none =>
    -- Newton step failed (derivative contains 0 or other issue)
    Json.mkObj [
      ("unique", toJson false),
      ("reason", "newton_step_failed"),
      ("interval", Json.mkObj [
        ("lo", toJson (toRawRat I.lo)),
        ("hi", toJson (toRawRat I.hi))
      ])
    ]
  | some N =>
    if contracts then
      -- Contraction! Unique root exists in N (and hence in I)
      Json.mkObj [
        ("unique", toJson true),
        ("reason", "newton_contraction"),
        ("interval", Json.mkObj [
          ("lo", toJson (toRawRat N.lo)),
          ("hi", toJson (toRawRat N.hi))
        ])
      ]
    else
      -- Newton step succeeded but didn't contract
      -- Still may have a root, but uniqueness not proven
      Json.mkObj [
        ("unique", toJson false),
        ("reason", "no_contraction"),
        ("interval", Json.mkObj [
          ("lo", toJson (toRawRat N.lo)),
          ("hi", toJson (toRawRat N.hi))
        ])
      ]

/-- Handle adaptive verification request using optimization -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ef6f30eb5b62bbe5255296e121fb7460609556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
