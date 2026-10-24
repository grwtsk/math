# totalStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa15169c241fcebc9212e1dd271af6bf64fbfe17ea5fe71e9b040fbb1dd7ac80",
  "kind": "def",
  "lexical_name": "totalStep",
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
  "slug": "totalstep--0558cd425eb2d24bd39c88bd",
  "source": {
    "blob": "08d9a38ce897fcace38081bbb2c7a6cc4a1fdff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0558cd425eb2d24bd39c88bdbc8a9539c18065496e4d9e6cba8bb4ef7743ce53",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa15169c241fcebc9212e1dd271af6bf64fbfe17ea5fe71e9b040fbb1dd7ac80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def totalStep
    {State : Type u}
    {InteriorClass : Type v}
    {SupportedClass : Type w}
    {Residue : Type x}
    {Divisor : Type y}
    {Invariant : Type z}
    {Obligation : Type max u v}
    [Zero Residue]
    (channel : ResidueChannel InteriorClass SupportedClass Residue)
    (classOf : State → InteriorClass)
    (decision :
      ∀ state, ResidueDecision (channel.residue (classOf state)))
    (interiorStep : State → State)
    (divisor : Divisor)
    (targetStratum : State → String)
    (invariants : State → List Invariant)
    (obligation : State → Obligation)
    (state : State) :
    TotalStepResult State Divisor Residue Invariant Obligation :=
  match decision state with
  | .vanishes _ => .interior (interiorStep state)
  | .nonvanishes proof =>
      .boundary
        { state := state
          divisor := divisor
          residue := channel.residue (classOf state)
          residueNonzero := proof
          targetStratum := targetStratum state
          preservedInvariants := invariants state
          continuationObligation := obligation state }

/--
Partial decision procedure.  Failure to produce either proof is represented
explicitly and cannot fall through to either operational branch.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d9a38ce897fcace38081bbb2c7a6cc4a1fdff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
