# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Spec.Variant7573098444791aa5a05c87e284adb71292cdf4fd1747157920d0ead6a859c003

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f21bb299148e55a527b7f9164ab27ad8c6128ccf` · SHA-256 `0af5887413dfc2ef183d1cae91df63049d3400775097c7c6866fbb4adc018580`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Format.Variantb7acb0aa6622e4daf5f160d4b80fe34e7f0703d57139f7d7707487e930b90a0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7acb0aa6622e4daf5f160d4b80fe34e7f0703d57139f7d7707487e930b90a0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Format.Variantb7acb0aa6622e4daf5f160d4b80fe34e7f0703d57139f7d7707487e930b90a0f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b7acb0aa6622e4daf5f160d4b80fe34e7f0703d57139f7d7707487e930b90a0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Notation/Spec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Format.Basic
public meta import Std.Time.Format.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Format.Variantb7acb0aa6622e4daf5f160d4b80fe34e7f0703d57139f7d7707487e930b90a0f

public section

namespace Std
namespace Time
open Lean Parser Command Std

private meta def convertText : Text → MacroM (TSyntax `term)
  | .short         => `(Std.Time.Text.short)
  | .full          => `(Std.Time.Text.full)
  | .narrow        => `(Std.Time.Text.narrow)
  | .twoLetterShort => `(Std.Time.Text.twoLetterShort)

private meta def convertNumber : Number → MacroM (TSyntax `term)
  | ⟨padding⟩ => `(Std.Time.Number.mk $(quote padding))

private meta def convertFraction : Fraction → MacroM (TSyntax `term)
  | .nano => `(Std.Time.Fraction.nano)
  | .truncated digits => `(Std.Time.Fraction.truncated $(quote digits))

private meta def convertYear : Year → MacroM (TSyntax `term)
  | .any      => `(Std.Time.Year.any)
  | .twoDigit => `(Std.Time.Year.twoDigit)
  | .fourDigit => `(Std.Time.Year.fourDigit)
  | .extended n => `(Std.Time.Year.extended $(quote n))

private meta def convertZoneId : ZoneId → MacroM (TSyntax `term)
  | .unknown => `(Std.Time.ZoneId.unknown)
  | .short   => `(Std.Time.ZoneId.short)
  | .full    => `(Std.Time.ZoneId.full)

private meta def convertZoneName : ZoneName → MacroM (TSyntax `term)
  | .short => `(Std.Time.ZoneName.short)
  | .full  => `(Std.Time.ZoneName.full)

private meta def convertOffsetX : OffsetX → MacroM (TSyntax `term)
  | .hour              => `(Std.Time.OffsetX.hour)
  | .hourMinute        => `(Std.Time.OffsetX.hourMinute)
  | .hourMinuteColon   => `(Std.Time.OffsetX.hourMinuteColon)
  | .hourMinuteSecond  => `(Std.Time.OffsetX.hourMinuteSecond)
  | .hourMinuteSecondColon => `(Std.Time.OffsetX.hourMinuteSecondColon)

private meta def convertOffsetO : OffsetO → MacroM (TSyntax `term)
  | .short => `(Std.Time.OffsetO.short)
  | .full  => `(Std.Time.OffsetO.full)

private meta def convertOffsetZ : OffsetZ → MacroM (TSyntax `term)
  | .hourMinute        => `(Std.Time.OffsetZ.hourMinute)
  | .full              => `(Std.Time.OffsetZ.full)
  | .hourMinuteSecondColon => `(Std.Time.OffsetZ.hourMinuteSecondColon)

private meta def convertModifier : Modifier → MacroM (TSyntax `term)
  | .G p => do `(Std.Time.Modifier.G $(← convertText p))
  | .y p => do `(Std.Time.Modifier.y $(← convertYear p))
  | .u p => do `(Std.Time.Modifier.u $(← convertYear p))
  | .Y p => do `(Std.Time.Modifier.Y $(← convertYear p))
  | .D p => do `(Std.Time.Modifier.D $(← convertNumber p))
  | .M (.inl num) => do `(Std.Time.Modifier.M (.inl $(← convertNumber num)))
  | .M (.inr txt) => do `(Std.Time.Modifier.M (.inr $(← convertText txt)))
  | .L (.inl num) => do `(Std.Time.Modifier.L (.inl $(← convertNumber num)))
  | .L (.inr txt) => do `(Std.Time.Modifier.L (.inr $(← convertText txt)))
  | .d p => do `(Std.Time.Modifier.d $(← convertNumber p))
  | .Q (.inl num) => do `(Std.Time.Modifier.Q (.inl $(← convertNumber num)))
  | .Q (.inr txt) => do `(Std.Time.Modifier.Q (.inr $(← convertText txt)))
  | .q (.inl num) => do `(Std.Time.Modifier.q (.inl $(← convertNumber num)))
  | .q (.inr txt) => do `(Std.Time.Modifier.q (.inr $(← convertText txt)))
  | .w p => do `(Std.Time.Modifier.w $(← convertNumber p))
  | .W p => do `(Std.Time.Modifier.W $(← convertNumber p))
  | .E p => do `(Std.Time.Modifier.E $(← convertText p))
  | .e (.inl num) => do `(Std.Time.Modifier.e (.inl $(← convertNumber num)))
  | .e (.inr txt) => do `(Std.Time.Modifier.e (.inr $(← convertText txt)))
  | .c (.inl num) => do `(Std.Time.Modifier.c (.inl $(← convertNumber num)))
  | .c (.inr txt) => do `(Std.Time.Modifier.c (.inr $(← convertText txt)))
  | .F p => do `(Std.Time.Modifier.F $(← convertNumber p))
  | .a p => do `(Std.Time.Modifier.a $(← convertText p))
  | .b p => do `(Std.Time.Modifier.b $(← convertText p))
  | .B p => do `(Std.Time.Modifier.B $(← convertText p))
  | .h p => do `(Std.Time.Modifier.h $(← convertNumber p))
  | .K p => do `(Std.Time.Modifier.K $(← convertNumber p))
  | .k p => do `(Std.Time.Modifier.k $(← convertNumber p))
  | .H p => do `(Std.Time.Modifier.H $(← convertNumber p))
  | .m p => do `(Std.Time.Modifier.m $(← convertNumber p))
  | .s p => do `(Std.Time.Modifier.s $(← convertNumber p))
  | .S p => do `(Std.Time.Modifier.S $(← convertFraction p))
  | .A p => do `(Std.Time.Modifier.A $(← convertNumber p))
  | .n p => do `(Std.Time.Modifier.n $(← convertNumber p))
  | .N p => do `(Std.Time.Modifier.N $(← convertNumber p))
  | .V p => do `(Std.Time.Modifier.V $(← convertZoneId p))
  | .z p => do `(Std.Time.Modifier.z $(← convertZoneName p))
  | .v p => do `(Std.Time.Modifier.v $(← convertZoneName p))
  | .O p => do `(Std.Time.Modifier.O $(← convertOffsetO p))
  | .X p => do `(Std.Time.Modifier.X $(← convertOffsetX p))
  | .x p => do `(Std.Time.Modifier.x $(← convertOffsetX p))
  | .Z p => do `(Std.Time.Modifier.Z $(← convertOffsetZ p))

private meta def convertFormatPart : FormatPart → MacroM (TSyntax `term)
  | .string s => `(.string $(Syntax.mkStrLit s))
  | .modifier mod => do `(.modifier $(← convertModifier mod))

/--
Syntax for defining a date spec at compile time.
-/
syntax "datespec(" str ")" : term

/--
Syntax for defining a date spec and configuration of this date spec at compile time.
-/
syntax "datespec(" str "," term ")" : term

private meta def formatStringToFormat (fmt : TSyntax `str) (config : Option (TSyntax `term)) : MacroM (TSyntax `term) := do
  let input := fmt.getString
  let format : Except String (GenericFormat .any) := GenericFormat.spec input
  match format with
  | .ok res =>
    let alts ← res.string.mapM convertFormatPart
    let alts := alts.foldl Syntax.TSepArray.push (Syntax.TSepArray.mk #[] (sep := ","))
    let config := config.getD (← `({}))
    `(⟨$config, [$alts,*]⟩)
  | .error err =>
    Macro.throwErrorAt fmt s!"cannot compile spec: {err}"

macro_rules
  | `(datespec( $fmt:str )) => formatStringToFormat fmt none
  | `(datespec( $fmt:str, $config:term )) => formatStringToFormat fmt (some config)
```
