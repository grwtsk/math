# getAttrKindCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b077a869ebb2cb95f792139858bd76ab2f0e1887c9b735f9b5240e195ca1041d",
  "kind": "def",
  "lexical_name": "getAttrKindCore",
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
  "slug": "getattrkindcore--2ee4d6c6cd98233e3eb74eca",
  "source": {
    "blob": "155abf05112b94af030269d996aab34099d11e59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ee4d6c6cd98233e3eb74eca33dd21074e2e9f7e1291edf3559989d636f02a9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b077a869ebb2cb95f792139858bd76ab2f0e1887c9b735f9b5240e195ca1041d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getAttrKindCore (stx : Syntax) : CoreM AttrKind := do
  match stx with
  | `(Parser.Attr.grindMod|=) => return .ematch (.eqLhs false)
  | `(Parser.Attr.grindMod|.) => return .ematch (.default false)
  | `(Parser.Attr.grindMod|= gen) => return .ematch (.eqLhs true)
  | `(Parser.Attr.grindMod|→) => return .ematch .fwd
  | `(Parser.Attr.grindMod|←) => return .ematch (.bwd false)
  | `(Parser.Attr.grindMod|. gen) => return .ematch (.default true)
  | `(Parser.Attr.grindMod|← gen) => return .ematch (.bwd true)
  | `(Parser.Attr.grindMod|=_) => return .ematch (.eqRhs false)
  | `(Parser.Attr.grindMod|=_ gen) => return .ematch (.eqRhs true)
  | `(Parser.Attr.grindMod|_=_) => return .ematch (.eqBoth false)
  | `(Parser.Attr.grindMod|_=_ gen) => return .ematch (.eqBoth true)
  | `(Parser.Attr.grindMod|←=) => return .ematch .eqBwd
  | `(Parser.Attr.grindMod|=>) => return .ematch .leftRight
  | `(Parser.Attr.grindMod|<=) => return .ematch .rightLeft
  | `(Parser.Attr.grindMod|usr) => return .ematch .user
  | `(Parser.Attr.grindMod|gen) => return .ematch (.default true)
  | `(Parser.Attr.grindMod|cases) => return .cases false
  | `(Parser.Attr.grindMod|cases eager) => return .cases true
  | `(Parser.Attr.grindMod|intro) => return .intro
  | `(Parser.Attr.grindMod|ext) => return .ext
  | `(Parser.Attr.grindMod|inj) => return .inj
  | `(Parser.Attr.grindMod|funCC) => return .funCC
  | `(Parser.Attr.grindMod|norm) => return .norm true false
  | `(Parser.Attr.grindMod|norm ↑) => return .norm true false
  | `(Parser.Attr.grindMod|norm ↓) => return .norm (post := false) false
  | `(Parser.Attr.grindMod|norm ←) => return .norm true true
  | `(Parser.Attr.grindMod|norm ↑ ←) => return .norm true true
  | `(Parser.Attr.grindMod|norm ↓ ←) => return .norm (post := false) true
  | `(Parser.Attr.grindMod|unfold) => return .unfold
  | `(Parser.Attr.grindMod|symbol $prio:prio) =>
    let some prio := prio.raw.isNatLit? | throwErrorAt prio "priority expected"
    return .symbol prio
  | _ => throwError "unexpected `grind` theorem kind: `{stx}`"

/-- Return theorem kind for `stx` of the form `(Attr.grindMod)?` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `155abf05112b94af030269d996aab34099d11e59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
